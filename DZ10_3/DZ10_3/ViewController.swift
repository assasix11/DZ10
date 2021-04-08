//
//  ViewController.swift
//  DZ10_3
//
//  Created by Дмитрий Зубарев on 08.04.2021.
//

import UIKit

class ViewController: UIViewController {
    var x : CGFloat!
    var y : CGFloat!
    var label : UILabel!
    @IBOutlet weak var customView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        label = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        label.text = "🎃"
        label.font = .systemFont(ofSize: 85)
        customView.addSubview(label)
        
    }

    @IBAction func onFinger(_ sender: UIPanGestureRecognizer) {
        let locationOnSubview = sender.location(in: customView)
        x = locationOnSubview.x - 50
        y = locationOnSubview.y - 50
        label.removeFromSuperview()
        label = UILabel(frame: CGRect(x: x, y: y, width: 100, height: 100))
        label.text = "🎃"
        label.font = .systemFont(ofSize: 85)
        customView.addSubview(label)
    }
    
}

