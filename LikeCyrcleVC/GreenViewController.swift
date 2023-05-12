//
//  GreenViewController.swift
//  LikeCyrcleVC
//
//  Created by Nasim Nozirov on 07.05.2023.
//

import UIKit

class GreenViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("green",#function)
    }
    
    override func viewWillLayoutSubviews() {
        print("green",#function)
    }
    
    override func viewDidLayoutSubviews() {
        print("green",#function)
    }
    
    override func updateViewConstraints() {
        print("green",#function)
        super.updateViewConstraints()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("green",#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("green",#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("green",#function)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        print("green",#function)
    }
    

    private var closeButton: UIButton = {
        let button = UIButton()
        button.setTitle("Вернуться назад", for: .normal)
        button.backgroundColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private var greenVCButton: UIButton = {
        let button = UIButton()
        button.setTitle("Перейти на синый экран", for: .normal)
        button.backgroundColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        view.addSubview(greenVCButton)
        view.addSubview(closeButton)
        fixToConstraint()
       greenVCButton.addTarget(self, action: #selector(touch), for: .touchUpInside)
      closeButton.addTarget(self, action: #selector(ouch), for: .touchUpInside)
    }
    
    private func fixToConstraint(){
        NSLayoutConstraint.activate([
            greenVCButton.centerXAnchor.constraint(equalTo:  view.safeAreaLayoutGuide.centerXAnchor, constant: 0),
            greenVCButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: 0),
            closeButton.topAnchor.constraint(equalTo: greenVCButton.bottomAnchor, constant: 50),
            closeButton.heightAnchor.constraint(equalToConstant: 50),
            closeButton.widthAnchor.constraint(equalToConstant: 150),
            closeButton.centerXAnchor.constraint(equalTo:  view.safeAreaLayoutGuide.centerXAnchor, constant: 0),
        ])
    }
    
    @objc func touch() {
        
        let blueVC = BlueViewController()
       blueVC.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        
        present(blueVC, animated: true)
    }
    
    @objc func ouch() {
        dismiss(animated: true)
    }

}
