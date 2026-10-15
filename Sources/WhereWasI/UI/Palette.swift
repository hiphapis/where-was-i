import AppKit
import SwiftUI

extension Color {
    /// 주의·경고 글씨용 주황. 시스템 .orange(#FF9500)는 밝은 배경에서 대비가 2.2:1 남짓이라 글씨로 읽기 어렵다.
    /// 라이트 모드에서는 어두운 주황(#9E4A00, 흰 배경 6:1·주황 칩 배경 5:1)을 쓰고, 다크 모드는 시스템 주황을 그대로 쓴다.
    static let warningText = Color(nsColor: NSColor(name: nil) { appearance in
        appearance.bestMatch(from: [.aqua, .darkAqua]) == .darkAqua
            ? .systemOrange
            : NSColor(srgbRed: 0.62, green: 0.29, blue: 0.0, alpha: 1)
    })
}
