//
//  OnBoardingViewController.swift
//  Bankey
//
//  Created by joshua roche on 09/03/2024.
//

import UIKit

class OnboardingViewController: UIViewController {
  
  let stackView = UIStackView()
  let imageView = UIImageView()
  let label = UILabel()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    style()
    layout()
  }
}

extension OnboardingViewController {
  func style() {
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.axis            = .vertical
    stackView.spacing         = 20
    
    // image
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.contentMode     = .scaleAspectFit
    imageView.image = UIImage(named: "delorean")
    
    // label
    label.translatesAutoresizingMaskIntoConstraints = false
    label.textAlignment       = .center
    label.font = UIFont.preferredFont(forTextStyle: .title3)
    label.adjustsFontForContentSizeCategory = true
    label.numberOfLines       = 0
    label.text = "Bankey is faster, easier to use, and has a brand new look and feel that will make you feel like your back in 1989"
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont.preferredFont(forTextStyle: .title1)
  }
  
  func layout() {
    stackView.addArrangedSubview(imageView)
    stackView.addArrangedSubview(label)
    
    view.addSubview(stackView)
    
    NSLayoutConstraint.activate([
      stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
      view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1)
    ])
  }
}
