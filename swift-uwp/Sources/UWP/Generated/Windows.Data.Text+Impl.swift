// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
// swiftlint:disable all
import Foundation
@_spi(WinRTInternal) @_spi(WinRTImplements) import WindowsFoundation
import CWinRT

@_spi(WinRTInternal)
public enum __IMPL_Windows_Data_Text {
}
@_spi(WinRTInternal)
extension TextSegment: WinRTBridgeable {
    public typealias ABI = __x_ABI_CWindows_CData_CText_CTextSegment
    public static func from(abi: ABI) -> Self {
        .init(startPosition: abi.StartPosition, length: abi.Length)
    }
    public func toABI() -> ABI {
        .from(swift: self)
    }
}

