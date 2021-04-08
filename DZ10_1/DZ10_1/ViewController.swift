//
//  ViewController.swift
//  DZ10_1
//
//  Created by Дмитрий Зубарев on 07.04.2021.
//

import UIKit

class ViewController: UIViewController {
    var circle : UILabel!
    var x : Int! = -1
    var y : Int! = -1
    @IBOutlet weak var touchDetector: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        let u = sender.location(in : touchDetector)
        if x >= 0 && y >= 0 && Double(u.x) > Double(x) && Double(u.x) < Double(x) + 100 && Double(u.y) > Double(y) && Double(u.y) < Double(y) + 90 {
            circle.removeFromSuperview()
            x = Int.random(in: 0...Int(touchDetector.bounds.size.width) - 100)
            y = Int.random(in: 100...Int(touchDetector.bounds.size.height) - 90)
            circle = UILabel(frame: CGRect(x: x, y: y, width: 100, height: 90))
            circle.text = "🎃"
            circle.font = .systemFont(ofSize: CGFloat(85))
            touchDetector.addSubview(circle)
        }
        else if x < 0 && y < 0 {
            x = Int.random(in: 0...(Int(touchDetector.bounds.size.width) - 100))
            y = Int.random(in: 100...(Int(touchDetector.bounds.size.height) - 90))
            circle = UILabel(frame: CGRect(x: x, y: y, width: 100, height: 90))
            circle.text = "🎃"
            circle.font = .systemFont(ofSize: CGFloat(85))
            touchDetector.addSubview(circle)
        }
    }
}

