//
//  RedViewController.swift
//  LikeCyrcleVC
//
//  Created by Nasim Nozirov on 07.05.2023.
//

import UIKit

class RedViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("red",#function)
    }
    
    override func viewWillLayoutSubviews() {
        print("red",#function)
    }
    
    override func viewDidLayoutSubviews() {
        print("red",#function)
    }
    
    override func updateViewConstraints() {
        print("red",#function)
        super.updateViewConstraints()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("red",#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("red",#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("red",#function)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        print("red",#function)
    }
    
    private var redVCButton: UIButton = {
        let button = UIButton()
        button.setTitle("Перейти на леленый экран", for: .normal)
        button.backgroundColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.addSubview(redVCButton)
        fixToConstraint()
        redVCButton.addTarget(self, action: #selector(touch), for: .touchUpInside)
        print("red",#function)
    }
    
    private func fixToConstraint(){
        NSLayoutConstraint.activate([
            redVCButton.centerXAnchor.constraint(equalTo:  view.safeAreaLayoutGuide.centerXAnchor, constant: 0),
            redVCButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: 0)
        ])
    }
    
    @objc func touch() {
        
        let greenVC = GreenViewController()
        greenVC.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        
        present(greenVC, animated: true)
    }
    
    
}

