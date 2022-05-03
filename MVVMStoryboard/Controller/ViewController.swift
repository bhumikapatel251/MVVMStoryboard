//
//  ViewController.swift
//  MVVMStoryboard
//
//  Created by Bhumika Patel on 03/05/22.
//

import UIKit

class ViewController: UIViewController {

    var viewModelUser = UserViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewModelUser.getAllUserData()
    }


}

