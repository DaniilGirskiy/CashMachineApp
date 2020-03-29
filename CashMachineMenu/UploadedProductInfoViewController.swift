//
//  UploadedProductInfoViewController.swift
//  CashMachineMenu
//
//  Created by Danya on 08.02.2020.
//  Copyright © 2020 Daniil Girskiy. All rights reserved.
//

import UIKit
import StorageSystems

class UploadedProductInfoViewController: UIViewController {
    @IBOutlet weak var infoTextView: UITextView!
    var info: ProductInformation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let info = info else { return }
        infoTextView.text = "\(info.title!)\n\(info.price!)\n\(info.taxType!.rawValue)"
    }
}
