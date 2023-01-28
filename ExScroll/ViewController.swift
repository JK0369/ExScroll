//
//  ViewController.swift
//  ExScroll
//
//  Created by 김종권 on 2023/01/29.
//

import UIKit
import Then
import SnapKit

class ViewController: UIViewController {
    private let myView = MyView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(myView)
        myView.snp.makeConstraints {
            $0.top.left.right.equalTo(view.safeAreaLayoutGuide)
            $0.height.equalTo(50)
        }
        
        myView.items = (1...20)
            .map(String.init)
    }
}
