// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
// swiftlint:disable all
import Foundation
@_spi(WinRTInternal) @_spi(WinRTImplements) import WindowsFoundation
import CWinRT

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.activationkind)
public typealias ActivationKind = __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind
/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.applicationexecutionstate)
public typealias ApplicationExecutionState = __x_ABI_CWindows_CApplicationModel_CActivation_CApplicationExecutionState
/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.backgroundactivatedeventargs)
public final class BackgroundActivatedEventArgs : WinRTClass, IBackgroundActivatedEventArgs {
    private typealias SwiftABI = __ABI_Windows_ApplicationModel_Activation.IBackgroundActivatedEventArgs
    private typealias CABI = __x_ABI_CWindows_CApplicationModel_CActivation_CIBackgroundActivatedEventArgs
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
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.backgroundactivatedeventargs.taskinstance)
    public var taskInstance : UWP.AnyIBackgroundTaskInstance! {
        get { try! _default.get_TaskInstance() }
    }

    deinit {
        _default = nil
    }
}

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.launchactivatedeventargs)
public final class LaunchActivatedEventArgs : WinRTClass, IActivatedEventArgs, ILaunchActivatedEventArgs, IApplicationViewActivatedEventArgs, IPrelaunchActivatedEventArgs, IViewSwitcherProvider, ILaunchActivatedEventArgs2, IActivatedEventArgsWithUser {
    private typealias SwiftABI = __ABI_Windows_ApplicationModel_Activation.ILaunchActivatedEventArgs
    private typealias CABI = __x_ABI_CWindows_CApplicationModel_CActivation_CILaunchActivatedEventArgs
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
    private lazy var _IActivatedEventArgs: __ABI_Windows_ApplicationModel_Activation.IActivatedEventArgs! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.launchactivatedeventargs.kind)
    public var kind : ActivationKind {
        get { try! _IActivatedEventArgs.get_Kind() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.launchactivatedeventargs.previousexecutionstate)
    public var previousExecutionState : ApplicationExecutionState {
        get { try! _IActivatedEventArgs.get_PreviousExecutionState() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.launchactivatedeventargs.splashscreen)
    public var splashScreen : SplashScreen! {
        get { try! _IActivatedEventArgs.get_SplashScreen() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.launchactivatedeventargs.arguments)
    public var arguments : String {
        get { try! _default.get_Arguments() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.launchactivatedeventargs.tileid)
    public var tileId : String {
        get { try! _default.get_TileId() }
    }

    private lazy var _IApplicationViewActivatedEventArgs: __ABI_Windows_ApplicationModel_Activation.IApplicationViewActivatedEventArgs! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.launchactivatedeventargs.currentlyshownapplicationviewid)
    public var currentlyShownApplicationViewId : Int32 {
        get { try! _IApplicationViewActivatedEventArgs.get_CurrentlyShownApplicationViewId() }
    }

    private lazy var _IPrelaunchActivatedEventArgs: __ABI_Windows_ApplicationModel_Activation.IPrelaunchActivatedEventArgs! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.launchactivatedeventargs.prelaunchactivated)
    public var prelaunchActivated : Bool {
        get { try! _IPrelaunchActivatedEventArgs.get_PrelaunchActivated() }
    }

    private lazy var _IViewSwitcherProvider: __ABI_Windows_ApplicationModel_Activation.IViewSwitcherProvider! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.launchactivatedeventargs.viewswitcher)
    public var viewSwitcher : UWP.ActivationViewSwitcher! {
        get { try! _IViewSwitcherProvider.get_ViewSwitcher() }
    }

    private lazy var _ILaunchActivatedEventArgs2: __ABI_Windows_ApplicationModel_Activation.ILaunchActivatedEventArgs2! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.launchactivatedeventargs.tileactivatedinfo)
    public var tileActivatedInfo : TileActivatedInfo! {
        get { try! _ILaunchActivatedEventArgs2.get_TileActivatedInfo() }
    }

    private lazy var _IActivatedEventArgsWithUser: __ABI_Windows_ApplicationModel_Activation.IActivatedEventArgsWithUser! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.launchactivatedeventargs.user)
    public var user : UWP.User! {
        get { try! _IActivatedEventArgsWithUser.get_User() }
    }

    deinit {
        _IActivatedEventArgs = nil
        _default = nil
        _IApplicationViewActivatedEventArgs = nil
        _IPrelaunchActivatedEventArgs = nil
        _IViewSwitcherProvider = nil
        _ILaunchActivatedEventArgs2 = nil
        _IActivatedEventArgsWithUser = nil
    }
}

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.protocolactivatedeventargs)
public final class ProtocolActivatedEventArgs : WinRTClass, IActivatedEventArgs, IProtocolActivatedEventArgs, IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData, IApplicationViewActivatedEventArgs, IViewSwitcherProvider, IActivatedEventArgsWithUser {
    private typealias SwiftABI = __ABI_Windows_ApplicationModel_Activation.IProtocolActivatedEventArgs
    private typealias CABI = __x_ABI_CWindows_CApplicationModel_CActivation_CIProtocolActivatedEventArgs
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
    private lazy var _IActivatedEventArgs: __ABI_Windows_ApplicationModel_Activation.IActivatedEventArgs! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.protocolactivatedeventargs.kind)
    public var kind : ActivationKind {
        get { try! _IActivatedEventArgs.get_Kind() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.protocolactivatedeventargs.previousexecutionstate)
    public var previousExecutionState : ApplicationExecutionState {
        get { try! _IActivatedEventArgs.get_PreviousExecutionState() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.protocolactivatedeventargs.splashscreen)
    public var splashScreen : SplashScreen! {
        get { try! _IActivatedEventArgs.get_SplashScreen() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.protocolactivatedeventargs.uri)
    public var uri : WindowsFoundation.Uri! {
        get { try! _default.get_Uri() }
    }

    private lazy var _IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData: __ABI_Windows_ApplicationModel_Activation.IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.protocolactivatedeventargs.callerpackagefamilyname)
    public var callerPackageFamilyName : String {
        get { try! _IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData.get_CallerPackageFamilyName() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.protocolactivatedeventargs.data)
    public var data : WindowsFoundation.ValueSet! {
        get { try! _IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData.get_Data() }
    }

    private lazy var _IApplicationViewActivatedEventArgs: __ABI_Windows_ApplicationModel_Activation.IApplicationViewActivatedEventArgs! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.protocolactivatedeventargs.currentlyshownapplicationviewid)
    public var currentlyShownApplicationViewId : Int32 {
        get { try! _IApplicationViewActivatedEventArgs.get_CurrentlyShownApplicationViewId() }
    }

    private lazy var _IViewSwitcherProvider: __ABI_Windows_ApplicationModel_Activation.IViewSwitcherProvider! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.protocolactivatedeventargs.viewswitcher)
    public var viewSwitcher : UWP.ActivationViewSwitcher! {
        get { try! _IViewSwitcherProvider.get_ViewSwitcher() }
    }

    private lazy var _IActivatedEventArgsWithUser: __ABI_Windows_ApplicationModel_Activation.IActivatedEventArgsWithUser! = getInterfaceForCaching()
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.protocolactivatedeventargs.user)
    public var user : UWP.User! {
        get { try! _IActivatedEventArgsWithUser.get_User() }
    }

    deinit {
        _IActivatedEventArgs = nil
        _default = nil
        _IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData = nil
        _IApplicationViewActivatedEventArgs = nil
        _IViewSwitcherProvider = nil
        _IActivatedEventArgsWithUser = nil
    }
}

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.splashscreen)
public final class SplashScreen : WinRTClass {
    private typealias SwiftABI = __ABI_Windows_ApplicationModel_Activation.ISplashScreen
    private typealias CABI = __x_ABI_CWindows_CApplicationModel_CActivation_CISplashScreen
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

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.splashscreen.imagelocation)
    public var imageLocation : WindowsFoundation.Rect {
        get { try! _default.get_ImageLocation() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.splashscreen.dismissed)
    public lazy var dismissed : Event<TypedEventHandler<SplashScreen?, Any?>> = {
      .init(
        add: { [weak self] in
          guard let this = self?._default else { return .init() }
          return try! this.add_Dismissed($0)
        },
        remove: { [weak self] in
         try? self?._default.remove_Dismissed($0)
       }
      )
    }()

    deinit {
        _default = nil
    }
}

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.tileactivatedinfo)
public final class TileActivatedInfo : WinRTClass {
    private typealias SwiftABI = __ABI_Windows_ApplicationModel_Activation.ITileActivatedInfo
    private typealias CABI = __x_ABI_CWindows_CApplicationModel_CActivation_CITileActivatedInfo
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

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.tileactivatedinfo.recentlyshownnotifications)
    public var recentlyShownNotifications : WindowsFoundation.AnyIVectorView<UWP.ShownTileNotification?>! {
        get { try! _default.get_RecentlyShownNotifications() }
    }

    deinit {
        _default = nil
    }
}

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.iactivatedeventargs)
public protocol IActivatedEventArgs : WinRTInterface {
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.iactivatedeventargs.kind)
    var kind: UWP.ActivationKind { get }
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.iactivatedeventargs.previousexecutionstate)
    var previousExecutionState: UWP.ApplicationExecutionState { get }
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.iactivatedeventargs.splashscreen)
    var splashScreen: UWP.SplashScreen! { get }
}

extension IActivatedEventArgs {
    public func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        switch iid {
            case __ABI_Windows_ApplicationModel_Activation.IActivatedEventArgsWrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Activation.IActivatedEventArgsWrapper(self)
                return wrapper!.queryInterface(iid)
            default: return nil
        }
    }
}
public typealias AnyIActivatedEventArgs = any IActivatedEventArgs

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.iactivatedeventargswithuser)
public protocol IActivatedEventArgsWithUser : IActivatedEventArgs {
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.iactivatedeventargswithuser.user)
    var user: UWP.User! { get }
}

extension IActivatedEventArgsWithUser {
    public func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        switch iid {
            case __ABI_Windows_ApplicationModel_Activation.IActivatedEventArgsWithUserWrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Activation.IActivatedEventArgsWithUserWrapper(self)
                return wrapper!.queryInterface(iid)
            case __ABI_Windows_ApplicationModel_Activation.IActivatedEventArgsWrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Activation.IActivatedEventArgsWrapper(self)
                return wrapper!.queryInterface(iid)
            default: return nil
        }
    }
}
public typealias AnyIActivatedEventArgsWithUser = any IActivatedEventArgsWithUser

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.iapplicationviewactivatedeventargs)
public protocol IApplicationViewActivatedEventArgs : IActivatedEventArgs {
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.iapplicationviewactivatedeventargs.currentlyshownapplicationviewid)
    var currentlyShownApplicationViewId: Int32 { get }
}

extension IApplicationViewActivatedEventArgs {
    public func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        switch iid {
            case __ABI_Windows_ApplicationModel_Activation.IApplicationViewActivatedEventArgsWrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Activation.IApplicationViewActivatedEventArgsWrapper(self)
                return wrapper!.queryInterface(iid)
            case __ABI_Windows_ApplicationModel_Activation.IActivatedEventArgsWrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Activation.IActivatedEventArgsWrapper(self)
                return wrapper!.queryInterface(iid)
            default: return nil
        }
    }
}
public typealias AnyIApplicationViewActivatedEventArgs = any IApplicationViewActivatedEventArgs

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.ibackgroundactivatedeventargs)
public protocol IBackgroundActivatedEventArgs : WinRTInterface {
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.ibackgroundactivatedeventargs.taskinstance)
    var taskInstance: UWP.AnyIBackgroundTaskInstance! { get }
}

extension IBackgroundActivatedEventArgs {
    public func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        switch iid {
            case __ABI_Windows_ApplicationModel_Activation.IBackgroundActivatedEventArgsWrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Activation.IBackgroundActivatedEventArgsWrapper(self)
                return wrapper!.queryInterface(iid)
            default: return nil
        }
    }
}
public typealias AnyIBackgroundActivatedEventArgs = any IBackgroundActivatedEventArgs

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.ilaunchactivatedeventargs)
public protocol ILaunchActivatedEventArgs : IActivatedEventArgs {
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.ilaunchactivatedeventargs.arguments)
    var arguments: String { get }
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.ilaunchactivatedeventargs.tileid)
    var tileId: String { get }
}

extension ILaunchActivatedEventArgs {
    public func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        switch iid {
            case __ABI_Windows_ApplicationModel_Activation.ILaunchActivatedEventArgsWrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Activation.ILaunchActivatedEventArgsWrapper(self)
                return wrapper!.queryInterface(iid)
            case __ABI_Windows_ApplicationModel_Activation.IActivatedEventArgsWrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Activation.IActivatedEventArgsWrapper(self)
                return wrapper!.queryInterface(iid)
            default: return nil
        }
    }
}
public typealias AnyILaunchActivatedEventArgs = any ILaunchActivatedEventArgs

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.ilaunchactivatedeventargs2)
public protocol ILaunchActivatedEventArgs2 : IActivatedEventArgs, ILaunchActivatedEventArgs {
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.ilaunchactivatedeventargs2.tileactivatedinfo)
    var tileActivatedInfo: UWP.TileActivatedInfo! { get }
}

extension ILaunchActivatedEventArgs2 {
    public func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        switch iid {
            case __ABI_Windows_ApplicationModel_Activation.ILaunchActivatedEventArgs2Wrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Activation.ILaunchActivatedEventArgs2Wrapper(self)
                return wrapper!.queryInterface(iid)
            case __ABI_Windows_ApplicationModel_Activation.IActivatedEventArgsWrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Activation.IActivatedEventArgsWrapper(self)
                return wrapper!.queryInterface(iid)
            case __ABI_Windows_ApplicationModel_Activation.ILaunchActivatedEventArgsWrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Activation.ILaunchActivatedEventArgsWrapper(self)
                return wrapper!.queryInterface(iid)
            default: return nil
        }
    }
}
public typealias AnyILaunchActivatedEventArgs2 = any ILaunchActivatedEventArgs2

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.iprelaunchactivatedeventargs)
public protocol IPrelaunchActivatedEventArgs : IActivatedEventArgs {
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.iprelaunchactivatedeventargs.prelaunchactivated)
    var prelaunchActivated: Bool { get }
}

extension IPrelaunchActivatedEventArgs {
    public func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        switch iid {
            case __ABI_Windows_ApplicationModel_Activation.IPrelaunchActivatedEventArgsWrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Activation.IPrelaunchActivatedEventArgsWrapper(self)
                return wrapper!.queryInterface(iid)
            case __ABI_Windows_ApplicationModel_Activation.IActivatedEventArgsWrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Activation.IActivatedEventArgsWrapper(self)
                return wrapper!.queryInterface(iid)
            default: return nil
        }
    }
}
public typealias AnyIPrelaunchActivatedEventArgs = any IPrelaunchActivatedEventArgs

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.iprotocolactivatedeventargs)
public protocol IProtocolActivatedEventArgs : IActivatedEventArgs {
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.iprotocolactivatedeventargs.uri)
    var uri: WindowsFoundation.Uri! { get }
}

extension IProtocolActivatedEventArgs {
    public func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        switch iid {
            case __ABI_Windows_ApplicationModel_Activation.IProtocolActivatedEventArgsWrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Activation.IProtocolActivatedEventArgsWrapper(self)
                return wrapper!.queryInterface(iid)
            case __ABI_Windows_ApplicationModel_Activation.IActivatedEventArgsWrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Activation.IActivatedEventArgsWrapper(self)
                return wrapper!.queryInterface(iid)
            default: return nil
        }
    }
}
public typealias AnyIProtocolActivatedEventArgs = any IProtocolActivatedEventArgs

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.iprotocolactivatedeventargswithcallerpackagefamilynameanddata)
public protocol IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData : IActivatedEventArgs {
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.iprotocolactivatedeventargswithcallerpackagefamilynameanddata.callerpackagefamilyname)
    var callerPackageFamilyName: String { get }
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.iprotocolactivatedeventargswithcallerpackagefamilynameanddata.data)
    var data: WindowsFoundation.ValueSet! { get }
}

extension IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData {
    public func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        switch iid {
            case __ABI_Windows_ApplicationModel_Activation.IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndDataWrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Activation.IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndDataWrapper(self)
                return wrapper!.queryInterface(iid)
            case __ABI_Windows_ApplicationModel_Activation.IActivatedEventArgsWrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Activation.IActivatedEventArgsWrapper(self)
                return wrapper!.queryInterface(iid)
            default: return nil
        }
    }
}
public typealias AnyIProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData = any IProtocolActivatedEventArgsWithCallerPackageFamilyNameAndData

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.iviewswitcherprovider)
public protocol IViewSwitcherProvider : IActivatedEventArgs {
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.applicationmodel.activation.iviewswitcherprovider.viewswitcher)
    var viewSwitcher: UWP.ActivationViewSwitcher! { get }
}

extension IViewSwitcherProvider {
    public func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        switch iid {
            case __ABI_Windows_ApplicationModel_Activation.IViewSwitcherProviderWrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Activation.IViewSwitcherProviderWrapper(self)
                return wrapper!.queryInterface(iid)
            case __ABI_Windows_ApplicationModel_Activation.IActivatedEventArgsWrapper.IID:
                let wrapper = __ABI_Windows_ApplicationModel_Activation.IActivatedEventArgsWrapper(self)
                return wrapper!.queryInterface(iid)
            default: return nil
        }
    }
}
public typealias AnyIViewSwitcherProvider = any IViewSwitcherProvider

extension UWP.ActivationKind {
    public static var launch : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_Launch
    }
    public static var search : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_Search
    }
    public static var shareTarget : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_ShareTarget
    }
    public static var file : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_File
    }
    public static var `protocol` : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_Protocol
    }
    public static var fileOpenPicker : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_FileOpenPicker
    }
    public static var fileSavePicker : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_FileSavePicker
    }
    public static var cachedFileUpdater : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_CachedFileUpdater
    }
    public static var contactPicker : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_ContactPicker
    }
    public static var device : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_Device
    }
    public static var printTaskSettings : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_PrintTaskSettings
    }
    public static var cameraSettings : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_CameraSettings
    }
    public static var restrictedLaunch : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_RestrictedLaunch
    }
    public static var appointmentsProvider : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_AppointmentsProvider
    }
    public static var contact : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_Contact
    }
    public static var lockScreenCall : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_LockScreenCall
    }
    public static var voiceCommand : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_VoiceCommand
    }
    public static var lockScreen : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_LockScreen
    }
    public static var pickerReturned : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_PickerReturned
    }
    public static var walletAction : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_WalletAction
    }
    public static var pickFileContinuation : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_PickFileContinuation
    }
    public static var pickSaveFileContinuation : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_PickSaveFileContinuation
    }
    public static var pickFolderContinuation : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_PickFolderContinuation
    }
    public static var webAuthenticationBrokerContinuation : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_WebAuthenticationBrokerContinuation
    }
    public static var webAccountProvider : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_WebAccountProvider
    }
    public static var componentUI : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_ComponentUI
    }
    public static var protocolForResults : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_ProtocolForResults
    }
    public static var toastNotification : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_ToastNotification
    }
    public static var print3DWorkflow : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_Print3DWorkflow
    }
    public static var dialReceiver : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_DialReceiver
    }
    public static var devicePairing : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_DevicePairing
    }
    public static var userDataAccountsProvider : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_UserDataAccountsProvider
    }
    public static var filePickerExperience : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_FilePickerExperience
    }
    public static var lockScreenComponent : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_LockScreenComponent
    }
    public static var contactPanel : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_ContactPanel
    }
    public static var printWorkflowForegroundTask : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_PrintWorkflowForegroundTask
    }
    public static var gameUIProvider : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_GameUIProvider
    }
    public static var startupTask : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_StartupTask
    }
    public static var commandLineLaunch : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_CommandLineLaunch
    }
    public static var barcodeScannerProvider : UWP.ActivationKind {
        __x_ABI_CWindows_CApplicationModel_CActivation_CActivationKind_BarcodeScannerProvider
    }
}
extension UWP.ActivationKind: @retroactive Hashable, @retroactive Codable, @retroactive @unchecked Sendable {}

extension UWP.ApplicationExecutionState {
    public static var notRunning : UWP.ApplicationExecutionState {
        __x_ABI_CWindows_CApplicationModel_CActivation_CApplicationExecutionState_NotRunning
    }
    public static var running : UWP.ApplicationExecutionState {
        __x_ABI_CWindows_CApplicationModel_CActivation_CApplicationExecutionState_Running
    }
    public static var suspended : UWP.ApplicationExecutionState {
        __x_ABI_CWindows_CApplicationModel_CActivation_CApplicationExecutionState_Suspended
    }
    public static var terminated : UWP.ApplicationExecutionState {
        __x_ABI_CWindows_CApplicationModel_CActivation_CApplicationExecutionState_Terminated
    }
    public static var closedByUser : UWP.ApplicationExecutionState {
        __x_ABI_CWindows_CApplicationModel_CActivation_CApplicationExecutionState_ClosedByUser
    }
}
extension UWP.ApplicationExecutionState: @retroactive Hashable, @retroactive Codable, @retroactive @unchecked Sendable {}

