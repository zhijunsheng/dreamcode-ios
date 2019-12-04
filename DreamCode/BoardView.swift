import UIKit
class BoardView: UIView {
    var originX : CGFloat = 114
    var originY : CGFloat = 164
    var side : CGFloat = 100
    
    
    override func draw(_ rect: CGRect) {
        drawGrid()
    }
    func drawGrid() {
        print(bounds.width)
        print(bounds.height)
        // horizontal * 5
        let hor = UIBezierPath()
        
        for i in 0..<5 + 1 {
            hor.move(to: CGPoint(x: originX + side * CGFloat(i), y: originY))
            hor.addLine(to: CGPoint(x: originX + side * CGFloat(i), y: originY + side * 4))
        }
        // vertical * 4
        let ver = UIBezierPath()
        for i in 0..<4 + 1 {
            ver.move(to: CGPoint(x: originX, y: originY + side * CGFloat(i)))
            ver.addLine(to: CGPoint(x: originX + side * 5, y: originY + side * CGFloat(i)))
        }
        hor.stroke()
        ver.stroke()
    }
}
// --- : 100 * 5 = 500 728 - 500 = 228 228 ÷ 2 = 114
// ||| : 100 * 4 = 400 728 - 400 = 328 328 ÷ 2 = 164
