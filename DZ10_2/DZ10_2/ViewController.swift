//
//  ViewController.swift
//  DZ10_2
//
//  Created by Дмитрий Зубарев on 08.04.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var touchView: UIView!
    var x = 100
    var y = 100
    var circle : UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        circle = UILabel(frame: CGRect(x: x, y: y, width: 100, height: 100))
        circle.text = "🌏"
        circle.font = .systemFont(ofSize: 85)
        touchView.addSubview(circle)
    }

    @IBAction func rightSwipe(_ sender: Any) {
        if x + 100 < Int(touchView.bounds.width) {
            circle.removeFromSuperview()
            x = x + 10
            circle = UILabel(frame: CGRect(x: x, y: y, width: 100, height: 100))
            circle.text = "🌏"
            circle.font = .systemFont(ofSize: 85)
            touchView.addSubview(circle)
        }
        
    }
    
    @IBAction func leftSwipee(_ sender: Any) {
        if x > 0 {
            circle.removeFromSuperview()
            x = x - 10
            circle = UILabel(frame: CGRect(x: x, y: y, width: 100, height: 100))
            circle.text = "🌏"
            circle.font = .systemFont(ofSize: 85)
            touchView.addSubview(circle)
        }
    }
    
    @IBAction func downSwipe(_ sender: Any) {
                if y - 100 < Int(touchView.bounds.height) {
                    circle.removeFromSuperview()
                    y = y + 10
                    circle = UILabel(frame: CGRect(x: x, y: y, width: 100, height: 100))
                    circle.text = "🌏"
                    circle.font = .systemFont(ofSize: 85)
                    touchView.addSubview(circle)
                }
    }
    
    @IBAction func upSwipe(_ sender: Any) {
                if y > 0 {
                    circle.removeFromSuperview()
                    y = y - 10
                    circle = UILabel(frame: CGRect(x: x, y: y, width: 100, height: 100))
                    circle.text = "🌏"
                    circle.font = .systemFont(ofSize: 85)
                    touchView.addSubview(circle)
                    }
    }
    
}
