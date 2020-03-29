//
//  MainCoordinator.swift
//  CashMachineMenu
//
//  Created by Danya on 11.02.2020.
//  Copyright © 2020 Daniil Girskiy. All rights reserved.
//

import UIKit
import StorageSystems

class MainCoordinatorAssembly {
    
    var coordinator: MainCoordinator {
        let coordinator = MainCoordinator()
        return coordinator
    }
}

class MainCoordinator {
    public var window: UIWindow?
    
    var menuVC: MenuViewController?
    var uploadedVC: UploadedProductInfoViewController?
     
    
    func start() {   // вызывается из AppDelegate
        let menuVC = vc("MenuViewController") as! MenuViewController
        menuVC.output = self
        window?.rootViewController = menuVC
        self.menuVC = menuVC
    }
}


extension MainCoordinator: MenuViewControllerOutput {
    func chooseService(_ service: Service) {
        let assembly = CoordinatorAssembly()
        let vc = assembly.coordinator
        vc.flowCompleted = {
            print("try closure")
        }

        vc.output = self
        menuVC?.present(vc.startVC(with: service), animated: true, completion: nil)
    }
}


private class LocalBundle {
    static var bundle: Bundle {
        return Bundle(for: LocalBundle.self)
    }
}

private extension MainCoordinator {
    func vc(_ id: String) -> UIViewController {
        let st = UIStoryboard(name: "Main", bundle: LocalBundle.bundle)
        return st.instantiateViewController(withIdentifier: id)
    }
}

extension MainCoordinator: StorageCoordinatorOutput {
    func uploadProductInfoFromFinishVC(finishVC: ProductInfoFinishController?) {
        let uploadedVC = vc("UploadedProductInfoViewController") as! UploadedProductInfoViewController
        uploadedVC.info = finishVC?.info
        finishVC?.present(uploadedVC, animated: true, completion: nil)
        self.uploadedVC = uploadedVC
    }
}
