// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
// swiftlint:disable all
import Foundation
@_spi(WinRTInternal) @_spi(WinRTImplements) import WindowsFoundation
import CWinRT

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.backgroundtaskcancellationreason)
public typealias BackgroundTaskCancellationReason = __x_ABI_CWindows_CApplicationModel_CBackground_CBackgroundTaskCancellationReason
/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.backgroundtaskcompletedeventargs)
public final class BackgroundTaskCompletedEventArgs : WinRTClass {
    private typealias SwiftABI = __ABI_Windows_ApplicationModel_Background.IBackgroundTaskCompletedEventArgs
    private typealias CABI = __x_ABI_CWindows_CApplicationModel_CBackground_CIBackgroundTaskCompletedEventArgs
    private lazy var _default: SwiftABI! = getInterfaceForCaching()
    @_spi(WinRTInternal)
    override public func _getABI<T>() -> UnsafeMutablePointer<T>? {
        if T.self == CABI.self {
            return RawPointer(_default)
        }
        return super._getABI()
    }

    @_spi(WinRTInternal)
    public init(fromAbi: WindowsFoundation.IInspectable) {
        super.init(fromAbi)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.backgroundtaskcompletedeventargs.checkresult)
    public func checkResult() throws {
        try _default.CheckResult()
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.backgroundtaskcompletedeventargs.instanceid)
    public var instanceId : Foundation.UUID {
        get { try! _default.get_InstanceId() }
    }

    deinit {
        _default = nil
    }
}

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.backgroundtaskdeferral)
public final class BackgroundTaskDeferral : WinRTClass {
    private typealias SwiftABI = __ABI_Windows_ApplicationModel_Background.IBackgroundTaskDeferral
    private typealias CABI = __x_ABI_CWindows_CApplicationModel_CBackground_CIBackgroundTaskDeferral
    private lazy var _default: SwiftABI! = getInterfaceForCaching()
    @_spi(WinRTInternal)
    override public func _getABI<T>() -> UnsafeMutablePointer<T>? {
        if T.self == CABI.self {
            return RawPointer(_default)
        }
        return super._getABI()
    }

    @_spi(WinRTInternal)
    public init(fromAbi: WindowsFoundation.IInspectable) {
        super.init(fromAbi)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.backgroundtaskdeferral.complete)
    public func complete() throws {
        try _default.Complete()
    }

    deinit {
        _default = nil
    }
}

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.backgroundtaskprogresseventargs)
public final class BackgroundTaskProgressEventArgs : WinRTClass {
    private typealias SwiftABI = __ABI_Windows_ApplicationModel_Background.IBackgroundTaskProgressEventArgs
    private typealias CABI = __x_ABI_CWindows_CApplicationModel_CBackground_CIBackgroundTaskProgressEventArgs
    private lazy var _default: SwiftABI! = getInterfaceForCaching()
    @_spi(WinRTInternal)
    override public func _getABI<T>() -> UnsafeMutablePointer<T>? {
        if T.self == CABI.self {
            return RawPointer(_default)
        }
        return super._getABI()
    }

    @_spi(WinRTInternal)
    public init(fromAbi: WindowsFoundation.IInspectable) {
        super.init(fromAbi)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.backgroundtaskprogresseventargs.instanceid)
    public var instanceId : Foundation.UUID {
        get { try! _default.get_InstanceId() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.backgroundtaskprogresseventargs.progress)
    public var progress : UInt32 {
        get { try! _default.get_Progress() }
    }

    deinit {
        _default = nil
    }
}

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.backgroundtaskregistration)
public final class BackgroundTaskRegistration : WinRTClass, IBackgroundTaskRegistration, IBackgroundTaskRegistration2, IBackgroundTaskRegistration3 {
    private typealias SwiftABI = __ABI_Windows_ApplicationModel_Background.IBackgroundTaskRegistration
    private typealias CABI = __x_ABI_CWindows_CApplicationModel_CBackground_CIBackgroundTaskRegistration
    private lazy var _default: SwiftABI! = getInterfaceForCaching()
    @_spi(WinRTInternal)
    override public func _getABI<T>() -> UnsafeMutablePointer<T>? {
        if T.self == CABI.self {
            return RawPointer(_default)
        }
        return super._getABI()
    }

    @_spi(WinRTInternal)
    public init(fromAbi: WindowsFoundation.IInspectable) {
        super.init(fromAbi)
    }

    override public func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        return super.queryInterface(iid)
    }
    private static let _IBackgroundTaskRegistrationStatics: __ABI_Windows_ApplicationModel_Background.IBackgroundTaskRegistrationStatics = try! RoGetActivationFactory("Windows.ApplicationModel.Background.BackgroundTaskRegistration")
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.backgroundtaskregistration.alltasks)
    public static var allTasks : WindowsFoundation.AnyIMapView<Foundation.UUID, AnyIBackgroundTaskRegistration?>! {
        get { try! _IBackgroundTaskRegistrationStatics.get_AllTasks() }
    }

    private static let _IBackgroundTaskRegistrationStatics2: __ABI_Windows_ApplicationModel_Background.IBackgroundTaskRegistrationStatics2 = try! RoGetActivationFactory("Windows.ApplicationModel.Background.BackgroundTaskRegistration")
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.backgroundtaskregistration.gettaskgroup)
    public static func getTaskGroup(_ groupId: String) throws -> BackgroundTaskRegistrationGroup! {
        return try _IBackgroundTaskRegistrationStatics2.GetTaskGroup(groupId)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.backgroundtaskregistration.alltaskgroups)
    public static var allTaskGroups : WindowsFoundation.AnyIMapView<String, BackgroundTaskRegistrationGroup?>! {
        get { try! _IBackgroundTaskRegistrationStatics2.get_AllTaskGroups() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.backgroundtaskregistration.unregister)
    public func unregister(_ cancelTask: Bool) throws {
        try _default.Unregister(cancelTask)
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.backgroundtaskregistration.name)
    public var name : String {
        get { try! _default.get_Name() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.backgroundtaskregistration.taskid)
    public var taskId : Foundation.UUID {
        get { try! _default.get_TaskId() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.backgroundtaskregistration.completed)
    public lazy var completed : Event<BackgroundTaskCompletedEventHandler> = {
      .init(
        add: { [weak self] in
          guard let this = self?._default else { return .init() }
          return try! this.add_Completed($0)
        },
        remove: { [weak self] in
         try? self?._default.remove_Completed($0)
       }
      )
    }()

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.backgroundtaskregistration.progress)
    public lazy var progress : Event<BackgroundTaskProgressEventHandler> = {
      .init(
        add: { [weak self] in
          guard let this = self?._default else { return .init() }
          return try! this.add_Progress($0)
        },
        remove: { [weak self] in
         try? self?._default.remove_Progress($0)
       }
      )
    }()

    private lazy var _IBackgroundTaskRegistration2: __ABI_Windows_ApplicationModel_Background.IBackgroundTaskRegistration2! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.backgroundtaskregistration.trigger)
    public var trigger : AnyIBackgroundTrigger! {
        get { try! _IBackgroundTaskRegistration2.get_Trigger() }
    }

    private lazy var _IBackgroundTaskRegistration3: __ABI_Windows_ApplicationModel_Background.IBackgroundTaskRegistration3! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.backgroundtaskregistration.taskgroup)
    public var taskGroup : BackgroundTaskRegistrationGroup! {
        get { try! _IBackgroundTaskRegistration3.get_TaskGroup() }
    }

    deinit {
        _default = nil
        _IBackgroundTaskRegistration2 = nil
        _IBackgroundTaskRegistration3 = nil
    }
}

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.backgroundtaskregistrationgroup)
public final class BackgroundTaskRegistrationGroup : WinRTClass {
    private typealias SwiftABI = __ABI_Windows_ApplicationModel_Background.IBackgroundTaskRegistrationGroup
    private typealias CABI = __x_ABI_CWindows_CApplicationModel_CBackground_CIBackgroundTaskRegistrationGroup
    private lazy var _default: SwiftABI! = getInterfaceForCaching()
    @_spi(WinRTInternal)
    override public func _getABI<T>() -> UnsafeMutablePointer<T>? {
        if T.self == CABI.self {
            return RawPointer(_default)
        }
        return super._getABI()
    }

    @_spi(WinRTInternal)
    public init(fromAbi: WindowsFoundation.IInspectable) {
        super.init(fromAbi)
    }

    private static let _IBackgroundTaskRegistrationGroupFactory: __ABI_Windows_ApplicationModel_Background.IBackgroundTaskRegistrationGroupFactory = try! RoGetActivationFactory("Windows.ApplicationModel.Background.BackgroundTaskRegistrationGroup")
    public init(_ id: String) {
        super.init(try! Self._IBackgroundTaskRegistrationGroupFactory.Create(id))
    }

    public init(_ id: String, _ name: String) {
        super.init(try! Self._IBackgroundTaskRegistrationGroupFactory.CreateWithName(id, name))
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.backgroundtaskregistrationgroup.alltasks)
    public var allTasks : WindowsFoundation.AnyIMapView<Foundation.UUID, BackgroundTaskRegistration?>! {
        get { try! _default.get_AllTasks() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.backgroundtaskregistrationgroup.id)
    public var id : String {
        get { try! _default.get_Id() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.backgroundtaskregistrationgroup.name)
    public var name : String {
        get { try! _default.get_Name() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.backgroundtaskregistrationgroup.backgroundactivated)
    public lazy var backgroundActivated : Event<TypedEventHandler<BackgroundTaskRegistrationGroup?, BackgroundActivatedEventArgs?>> = {
      .init(
        add: { [weak self] in
          guard let this = self?._default else { return .init() }
          return try! this.add_BackgroundActivated($0)
        },
        remove: { [weak self] in
         try? self?._default.remove_BackgroundActivated($0)
       }
      )
    }()

    deinit {
        _default = nil
    }
}

public typealias BackgroundTaskCanceledEventHandler = (AnyIBackgroundTaskInstance?, BackgroundTaskCancellationReason) throws -> ()
public typealias BackgroundTaskCompletedEventHandler = (BackgroundTaskRegistration?, BackgroundTaskCompletedEventArgs?) throws -> ()
public typealias BackgroundTaskProgressEventHandler = (BackgroundTaskRegistration?, BackgroundTaskProgressEventArgs?) throws -> ()
/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.ibackgroundtaskinstance)
public protocol IBackgroundTaskInstance : WinRTInterface {
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.ibackgroundtaskinstance.getdeferral)
    func getDeferral() throws -> UWP.BackgroundTaskDeferral!
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.ibackgroundtaskinstance.instanceid)
    var instanceId: Foundation.UUID { get }
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.ibackgroundtaskinstance.progress)
    var progress: UInt32 { get set }
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.ibackgroundtaskinstance.suspendedcount)
    var suspendedCount: UInt32 { get }
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.ibackgroundtaskinstance.task)
    var task: UWP.BackgroundTaskRegistration! { get }
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.ibackgroundtaskinstance.triggerdetails)
    var triggerDetails: Any! { get }
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.ibackgroundtaskinstance.canceled)
    var canceled: Event<BackgroundTaskCanceledEventHandler> { get }
}

public extension EventSource where Handler == BackgroundTaskCanceledEventHandler {
    func invoke(_ sender: AnyIBackgroundTaskInstance!, _ reason: BackgroundTaskCancellationReason) throws {
        for handler in getInvocationList() {
            try handler(sender, reason)
        }
    }
}

extension IBackgroundTaskInstance {
    public func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        switch iid {
            case __ABI_Windows_ApplicationModel_Background.IBackgroundTaskInstanceWrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Background.IBackgroundTaskInstanceWrapper(self)
                return wrapper!.queryInterface(iid)
            default: return nil
        }
    }
}
public typealias AnyIBackgroundTaskInstance = any IBackgroundTaskInstance

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.ibackgroundtaskregistration)
public protocol IBackgroundTaskRegistration : WinRTInterface {
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.ibackgroundtaskregistration.unregister)
    func unregister(_ cancelTask: Bool) throws
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.ibackgroundtaskregistration.name)
    var name: String { get }
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.ibackgroundtaskregistration.taskid)
    var taskId: Foundation.UUID { get }
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.ibackgroundtaskregistration.completed)
    var completed: Event<BackgroundTaskCompletedEventHandler> { get }
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.ibackgroundtaskregistration.progress)
    var progress: Event<BackgroundTaskProgressEventHandler> { get }
}

public extension EventSource where Handler == BackgroundTaskCompletedEventHandler {
    func invoke(_ sender: BackgroundTaskRegistration!, _ args: BackgroundTaskCompletedEventArgs!) throws {
        for handler in getInvocationList() {
            try handler(sender, args)
        }
    }
}

public extension EventSource where Handler == BackgroundTaskProgressEventHandler {
    func invoke(_ sender: BackgroundTaskRegistration!, _ args: BackgroundTaskProgressEventArgs!) throws {
        for handler in getInvocationList() {
            try handler(sender, args)
        }
    }
}

extension IBackgroundTaskRegistration {
    public func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        switch iid {
            case __ABI_Windows_ApplicationModel_Background.IBackgroundTaskRegistrationWrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Background.IBackgroundTaskRegistrationWrapper(self)
                return wrapper!.queryInterface(iid)
            default: return nil
        }
    }
}
public typealias AnyIBackgroundTaskRegistration = any IBackgroundTaskRegistration

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.ibackgroundtaskregistration2)
public protocol IBackgroundTaskRegistration2 : IBackgroundTaskRegistration {
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.ibackgroundtaskregistration2.trigger)
    var trigger: UWP.AnyIBackgroundTrigger! { get }
}

extension IBackgroundTaskRegistration2 {
    public func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        switch iid {
            case __ABI_Windows_ApplicationModel_Background.IBackgroundTaskRegistration2Wrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Background.IBackgroundTaskRegistration2Wrapper(self)
                return wrapper!.queryInterface(iid)
            case __ABI_Windows_ApplicationModel_Background.IBackgroundTaskRegistrationWrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Background.IBackgroundTaskRegistrationWrapper(self)
                return wrapper!.queryInterface(iid)
            default: return nil
        }
    }
}
public typealias AnyIBackgroundTaskRegistration2 = any IBackgroundTaskRegistration2

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.ibackgroundtaskregistration3)
public protocol IBackgroundTaskRegistration3 : IBackgroundTaskRegistration {
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.ibackgroundtaskregistration3.taskgroup)
    var taskGroup: UWP.BackgroundTaskRegistrationGroup! { get }
}

extension IBackgroundTaskRegistration3 {
    public func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        switch iid {
            case __ABI_Windows_ApplicationModel_Background.IBackgroundTaskRegistration3Wrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Background.IBackgroundTaskRegistration3Wrapper(self)
                return wrapper!.queryInterface(iid)
            case __ABI_Windows_ApplicationModel_Background.IBackgroundTaskRegistrationWrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Background.IBackgroundTaskRegistrationWrapper(self)
                return wrapper!.queryInterface(iid)
            default: return nil
        }
    }
}
public typealias AnyIBackgroundTaskRegistration3 = any IBackgroundTaskRegistration3

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.background.ibackgroundtrigger)
public protocol IBackgroundTrigger : WinRTInterface {
}

extension IBackgroundTrigger {
    public func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        switch iid {
            case __ABI_Windows_ApplicationModel_Background.IBackgroundTriggerWrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Background.IBackgroundTriggerWrapper(self)
                return wrapper!.queryInterface(iid)
            default: return nil
        }
    }
}
public typealias AnyIBackgroundTrigger = any IBackgroundTrigger

extension UWP.BackgroundTaskCancellationReason {
    public static var abort : UWP.BackgroundTaskCancellationReason {
        __x_ABI_CWindows_CApplicationModel_CBackground_CBackgroundTaskCancellationReason_Abort
    }
    public static var terminating : UWP.BackgroundTaskCancellationReason {
        __x_ABI_CWindows_CApplicationModel_CBackground_CBackgroundTaskCancellationReason_Terminating
    }
    public static var loggingOff : UWP.BackgroundTaskCancellationReason {
        __x_ABI_CWindows_CApplicationModel_CBackground_CBackgroundTaskCancellationReason_LoggingOff
    }
    public static var servicingUpdate : UWP.BackgroundTaskCancellationReason {
        __x_ABI_CWindows_CApplicationModel_CBackground_CBackgroundTaskCancellationReason_ServicingUpdate
    }
    public static var idleTask : UWP.BackgroundTaskCancellationReason {
        __x_ABI_CWindows_CApplicationModel_CBackground_CBackgroundTaskCancellationReason_IdleTask
    }
    public static var uninstall : UWP.BackgroundTaskCancellationReason {
        __x_ABI_CWindows_CApplicationModel_CBackground_CBackgroundTaskCancellationReason_Uninstall
    }
    public static var conditionLoss : UWP.BackgroundTaskCancellationReason {
        __x_ABI_CWindows_CApplicationModel_CBackground_CBackgroundTaskCancellationReason_ConditionLoss
    }
    public static var systemPolicy : UWP.BackgroundTaskCancellationReason {
        __x_ABI_CWindows_CApplicationModel_CBackground_CBackgroundTaskCancellationReason_SystemPolicy
    }
    public static var quietHoursEntered : UWP.BackgroundTaskCancellationReason {
        __x_ABI_CWindows_CApplicationModel_CBackground_CBackgroundTaskCancellationReason_QuietHoursEntered
    }
    public static var executionTimeExceeded : UWP.BackgroundTaskCancellationReason {
        __x_ABI_CWindows_CApplicationModel_CBackground_CBackgroundTaskCancellationReason_ExecutionTimeExceeded
    }
    public static var resourceRevocation : UWP.BackgroundTaskCancellationReason {
        __x_ABI_CWindows_CApplicationModel_CBackground_CBackgroundTaskCancellationReason_ResourceRevocation
    }
    public static var energySaver : UWP.BackgroundTaskCancellationReason {
        __x_ABI_CWindows_CApplicationModel_CBackground_CBackgroundTaskCancellationReason_EnergySaver
    }
}
extension UWP.BackgroundTaskCancellationReason: @retroactive Hashable, @retroactive Codable, @retroactive @unchecked Sendable {}

