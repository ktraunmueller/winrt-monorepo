// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
// swiftlint:disable all
import Foundation
@_spi(WinRTInternal) @_spi(WinRTImplements) import WindowsFoundation
import CWinRT

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.media.casting.castingsource)
public final class CastingSource : WinRTClass {
    private typealias SwiftABI = __ABI_Windows_Media_Casting.ICastingSource
    private typealias CABI = __x_ABI_CWindows_CMedia_CCasting_CICastingSource
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

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.media.casting.castingsource.preferredsourceuri)
    public var preferredSourceUri : WindowsFoundation.Uri! {
        get { try! _default.get_PreferredSourceUri() }
        set { try! _default.put_PreferredSourceUri(newValue) }
    }

    deinit {
        _default = nil
    }
}

