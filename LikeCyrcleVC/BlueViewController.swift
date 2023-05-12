//
//  BlueViewController.swift
//  LikeCyrcleVC
//
//  Created by Nasim Nozirov on 07.05.2023.
//

import UIKit

class BlueViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("blue",#function)
    }
    
    override func viewWillLayoutSubviews() {
        print("blue",#function)
    }
    
    override func viewDidLayoutSubviews() {
        print("blue",#function)
    }
    
    override func updateViewConstraints() {
        print("blue",#function)
        super.updateViewConstraints()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("blue",#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("blue",#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("blue",#function)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        print("blue",#function)
    }
    

    private var blueVCButton: UIButton = {
        let button = UIButton()
        button.setTitle("Вернуться назад", for: .normal)
       
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        view.addSubview(blueVCButton)
        fixToConstraint()
        blueVCButton.addTarget(self, action: #selector(touch), for: .touchUpInside)
    }
    
    private func fixToConstraint(){
        NSLayoutConstraint.activate([
            blueVCButton.centerXAnchor.constraint(equalTo:  view.safeAreaLayoutGuide.centerXAnchor),
            blueVCButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
        ])
    }
    
    @objc func touch() {
        dismiss(animated: true)
    }
}
