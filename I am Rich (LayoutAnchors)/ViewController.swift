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
        
        applyStyle()
        applyLayout()
    }
    
    func applyStyle() {
        imageView.contentMode = .scaleAspectFit
    }
    
    func applyLayout() {
        applyStyleLabel(label)
        applyStyleImageView(imageView)
        
        [label, imageView].forEach() { item in
            view.addSubview(item)
            item.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            imageView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            imageView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 270),
            imageView.heightAnchor.constraint(equalToConstant: 270),
            
            label.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            label.bottomAnchor.constraint(equalTo: imageView.topAnchor, constant: -70)
            
        ])
    }
    
    func applyStyleLabel(
        _ label: UILabel,
        text: String = "I Am Rich",
        font: UIFont? = UIFont(name: "Helvetica Neue", size: 40),
        textColor: UIColor = .white
    ){
        label.text = text
        label.font = font
        label.textColor = textColor
    }
    
    func applyStyleImageView(
        _ imageView: UIImageView,
        image: UIImage? = UIImage(named: "diamond")
    ){
        imageView.image = image
    }
}

