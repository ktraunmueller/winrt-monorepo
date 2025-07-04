// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
// swiftlint:disable all
import Foundation
@_spi(WinRTInternal) @_spi(WinRTImplements) import WindowsFoundation
import CWinRT

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.ui.text.fontstretch)
public typealias FontStretch = __x_ABI_CWindows_CUI_CText_CFontStretch
/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.ui.text.fontstyle)
public typealias FontStyle = __x_ABI_CWindows_CUI_CText_CFontStyle
/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.ui.text.textdecorations)
public typealias TextDecorations = __x_ABI_CWindows_CUI_CText_CTextDecorations
/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.ui.text.fontweights)
public final class FontWeights : WinRTClass {
    private typealias SwiftABI = __ABI_Windows_UI_Text.IFontWeights
    private typealias CABI = __x_ABI_CWindows_CUI_CText_CIFontWeights
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

    private static let _IFontWeightsStatics: __ABI_Windows_UI_Text.IFontWeightsStatics = try! RoGetActivationFactory("Windows.UI.Text.FontWeights")
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.ui.text.fontweights.black)
    public static var black : FontWeight {
        get { try! _IFontWeightsStatics.get_Black() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.ui.text.fontweights.bold)
    public static var bold : FontWeight {
        get { try! _IFontWeightsStatics.get_Bold() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.ui.text.fontweights.extrablack)
    public static var extraBlack : FontWeight {
        get { try! _IFontWeightsStatics.get_ExtraBlack() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.ui.text.fontweights.extrabold)
    public static var extraBold : FontWeight {
        get { try! _IFontWeightsStatics.get_ExtraBold() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.ui.text.fontweights.extralight)
    public static var extraLight : FontWeight {
        get { try! _IFontWeightsStatics.get_ExtraLight() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.ui.text.fontweights.light)
    public static var light : FontWeight {
        get { try! _IFontWeightsStatics.get_Light() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.ui.text.fontweights.medium)
    public static var medium : FontWeight {
        get { try! _IFontWeightsStatics.get_Medium() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.ui.text.fontweights.normal)
    public static var normal : FontWeight {
        get { try! _IFontWeightsStatics.get_Normal() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.ui.text.fontweights.semibold)
    public static var semiBold : FontWeight {
        get { try! _IFontWeightsStatics.get_SemiBold() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.ui.text.fontweights.semilight)
    public static var semiLight : FontWeight {
        get { try! _IFontWeightsStatics.get_SemiLight() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.ui.text.fontweights.thin)
    public static var thin : FontWeight {
        get { try! _IFontWeightsStatics.get_Thin() }
    }

    deinit {
        _default = nil
    }
}

/// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.ui.text.fontweight)
public struct FontWeight: Hashable, Codable, Sendable {
    /// [Open Microsoft documentation](https://learn.microsoft.com/uwp/api/windows.ui.text.fontweight.weight)
    public var weight: UInt16 = 0
    public init() {}
    public init(weight: UInt16) {
        self.weight = weight
    }
}

extension UWP.FontStretch {
    public static var undefined : UWP.FontStretch {
        __x_ABI_CWindows_CUI_CText_CFontStretch_Undefined
    }
    public static var ultraCondensed : UWP.FontStretch {
        __x_ABI_CWindows_CUI_CText_CFontStretch_UltraCondensed
    }
    public static var extraCondensed : UWP.FontStretch {
        __x_ABI_CWindows_CUI_CText_CFontStretch_ExtraCondensed
    }
    public static var condensed : UWP.FontStretch {
        __x_ABI_CWindows_CUI_CText_CFontStretch_Condensed
    }
    public static var semiCondensed : UWP.FontStretch {
        __x_ABI_CWindows_CUI_CText_CFontStretch_SemiCondensed
    }
    public static var normal : UWP.FontStretch {
        __x_ABI_CWindows_CUI_CText_CFontStretch_Normal
    }
    public static var semiExpanded : UWP.FontStretch {
        __x_ABI_CWindows_CUI_CText_CFontStretch_SemiExpanded
    }
    public static var expanded : UWP.FontStretch {
        __x_ABI_CWindows_CUI_CText_CFontStretch_Expanded
    }
    public static var extraExpanded : UWP.FontStretch {
        __x_ABI_CWindows_CUI_CText_CFontStretch_ExtraExpanded
    }
    public static var ultraExpanded : UWP.FontStretch {
        __x_ABI_CWindows_CUI_CText_CFontStretch_UltraExpanded
    }
}
extension UWP.FontStretch: @retroactive Hashable, @retroactive Codable, @retroactive @unchecked Sendable {}

extension UWP.FontStyle {
    public static var normal : UWP.FontStyle {
        __x_ABI_CWindows_CUI_CText_CFontStyle_Normal
    }
    public static var oblique : UWP.FontStyle {
        __x_ABI_CWindows_CUI_CText_CFontStyle_Oblique
    }
    public static var italic : UWP.FontStyle {
        __x_ABI_CWindows_CUI_CText_CFontStyle_Italic
    }
}
extension UWP.FontStyle: @retroactive Hashable, @retroactive Codable, @retroactive @unchecked Sendable {}

extension UWP.TextDecorations {
    public static var none : UWP.TextDecorations {
        __x_ABI_CWindows_CUI_CText_CTextDecorations_None
    }
    public static var underline : UWP.TextDecorations {
        __x_ABI_CWindows_CUI_CText_CTextDecorations_Underline
    }
    public static var strikethrough : UWP.TextDecorations {
        __x_ABI_CWindows_CUI_CText_CTextDecorations_Strikethrough
    }
}
extension UWP.TextDecorations: @retroactive Hashable, @retroactive Codable, @retroactive @unchecked Sendable {}

