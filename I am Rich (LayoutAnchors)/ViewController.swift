//
//  ViewController.swift
//  I am Rich (LayoutAnchors)
//
//  Created by Eduard Tokarev on 21.01.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    private let label = UILabel()
    private let imageView = UIImageView()
    private let backgroundColor = UIColor(red: 36/255, green: 73/255, blue: 94/255, alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = backgroundColor
        applyStyleLabel(label)
        applyStyleImageView(imageView)
        [label, imageView].forEach() { item in
            view.addSubview(item)
        }
    }
    
    func applyStyleLabel(
        _ label: UILabel,
        frame: CGRect = CGRect(x: 124, y: 156, width: 173, height: 48),
        text: String = "I Am Rich",
        font: UIFont? = UIFont(name: "Helvetica Neue", size: 40),
        textColor: UIColor = .white
    ){
        label.frame = frame
        label.text = text
        label.font = font
        label.textColor = textColor
    }
    
    func applyStyleImageView(
        _ imageView: UIImageView,
        frame: CGRect = CGRect(x: 72, y: 313, width: 270, height: 270)
    ){
        imageView.frame = frame
    }
    
}

