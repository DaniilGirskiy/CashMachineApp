//
//  1C_Catalogue.swift
//  CashMachineMenu
//
//  Created by Danya on 07.02.2020.
//  Copyright © 2020 Daniil Girskiy. All rights reserved.
//

import UIKit
import StorageSystems

public class OneC_Catalogue {
    private var productsList = [UIImage: ProductInformation]()
    
    public func addProductInList(product: ProductInformation) {
        productsList[product.barcode!] = product // forced unwrapped
    }
    
    // catalogue information - products
}



// сделать таб бар контроллер:
//сканирование кодов
//добавление товаров
