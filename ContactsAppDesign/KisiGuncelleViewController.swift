//
//  KisiGuncelleViewController.swift
//  ContactsAppDesign
//
//  Created by Deha Süer on 26.08.2022.
//

import UIKit

class KisiGuncelleViewController: UIViewController {
    @IBOutlet weak var kisiAdTextField: UITextField!
    @IBOutlet weak var kisiTelTextField: UITextField!
    
    let context = appDelegate.persistentContainer.viewContext
    
    var kisi: Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let k = kisi {
            kisiAdTextField.text = k.kisi_ad
            kisiTelTextField.text = k.kisi_tel
        }
    }
    
    @IBAction func guncelle(_ sender: Any) {
        
        if let k = kisi, let ad = kisiAdTextField.text,let tel = kisiTelTextField.text {
            
            k.kisi_ad = ad
            k.kisi_tel = tel
            
            appDelegate.saveContext()
        }
        
    }
    
   
}
