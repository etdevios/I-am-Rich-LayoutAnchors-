//
//  ViewController.swift
//  I am Rich (LayoutAnchors)
//
//  Created by Eduard Tokarev on 21.01.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    private let mainStackView = UIStackView()
    private let label = UILabel()
    private let bottomPaddingView = UIView()
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
        
        arrangeStackView(
            mainStackView,
            subviews: [
                label,
                bottomPaddingView
            ])
        
        [imageView, mainStackView].forEach() { item in
            view.addSubview(item)
            item.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            mainStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            mainStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            imageView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            imageView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 270),
            imageView.heightAnchor.constraint(equalToConstant: 270),
        ])
    }
    
    func arrangeStackView(
        _ stackView: UIStackView,
        subviews: [UIView],
        spacing: CGFloat = 0,
        axis: NSLayoutConstraint.Axis = .vertical,
        distribution: UIStackView.Distribution = .fillEqually,
        alignment: UIStackView.Alignment = .center
    ){
        stackView.axis = axis
        stackView.spacing = spacing
        stackView.distribution = distribution
        stackView.alignment = alignment
        
        subviews.forEach { item in
            item.translatesAutoresizingMaskIntoConstraints = false
            stackView.addArrangedSubview(item)
        }
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

