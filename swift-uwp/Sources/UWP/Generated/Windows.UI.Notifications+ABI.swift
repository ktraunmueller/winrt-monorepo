// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
// swiftlint:disable all
import Foundation
@_spi(WinRTInternal) @_spi(WinRTImplements) import WindowsFoundation
import CWinRT

private var IID___x_ABI_CWindows_CUI_CNotifications_CIShownTileNotification: WindowsFoundation.IID {
    .init(Data1: 0x342D8988, Data2: 0x5AF2, Data3: 0x481A, Data4: ( 0xA6,0xA3,0xF2,0xFD,0xC7,0x8D,0xE8,0x8E ))// 342D8988-5AF2-481A-A6A3-F2FDC78DE88E
}

@_spi(WinRTInternal)
public enum __ABI_Windows_UI_Notifications {
    public class IShownTileNotification: WindowsFoundation.IInspectable {
        override public class var IID: WindowsFoundation.IID { IID___x_ABI_CWindows_CUI_CNotifications_CIShownTileNotification }

        public func get_Arguments() throws -> String {
            var value: HSTRING?
            _ = try perform(as: __x_ABI_CWindows_CUI_CNotifications_CIShownTileNotification.self) { pThis in
                try CHECKED(pThis.pointee.lpVtbl.pointee.get_Arguments(pThis, &value))
            }
            return .init(from: value)
        }

    }

}
