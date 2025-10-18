import Dispatch
import Foundation
import WinAppSDK

extension Application {
    /// same as WinUI.Application.start, but with RunLoop and Dispatch support.
    /// - Parameter handler: initialize the Application in this handler
    /// - Parameter runLoop: this is called once the Application is initialized, and is responsible for running the RunLoop
    public static func startWithCustomRunLoop(_ runLoop: SwiftApplication.RunLoop,
        _ handler: @MainActor (ApplicationInitializationCallbackParams?) -> Void
    ) throws -> Int32 {
        try MainActor.assumeIsolated {
            // A DispatcherQueue must exist on the thread before initializing WindowsXamlManager
            // We create a dispatcherQueueController to create and manage the DispatcherQueue
            let dispatcherQueueController: DispatcherQueueController = try DispatcherQueueController.createOnCurrentThread()

            handler(nil)

            guard let application = Application.current else {
                fatalError("Application not created in callback")
            }

            let xamlManager: WindowsXamlManager = try WindowsXamlManager.initializeForCurrentThread()
            application.dispatcherShutdownMode = .onLastWindowClose
            return try withExtendedLifetime([xamlManager, dispatcherQueueController, application]) {
                try runLoop(dispatcherQueueController.dispatcherQueue)
            }
        }
    }
}