//
//  MenuViewController.swift
//  CashMachineMenu
//
//  Created by Danya on 03/02/2020.
//  Copyright © 2020 Daniil Girskiy. All rights reserved.
//

import UIKit
import StorageSystems

protocol MenuViewControllerInput {
    var output: MenuViewControllerOutput? { get set }
}

protocol MenuViewControllerOutput {
    func chooseService(_ service: Service)
}

class MenuViewController: UIViewController, MenuViewControllerInput {
    var output: MenuViewControllerOutput?
    
    @IBAction func someButtonPressed(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            output?.chooseService(.enterProductInformation)
        case 2:
            output?.chooseService(.scanProduct)
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}


