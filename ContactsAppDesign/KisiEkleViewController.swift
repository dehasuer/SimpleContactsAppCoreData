//
//  KisiEkleViewController.swift
//  ContactsAppDesign
//
//  Created by Deha Süer on 26.08.2022.
//

import UIKit

class KisiEkleViewController: UIViewController {
    @IBOutlet weak var kisiAdTextField: UITextField!
    @IBOutlet weak var kisiTelTextField: UITextField!
    
    let context = appDelegate.persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ekle(_ sender: Any) {
        
        if let ad = kisiAdTextField.text , let tel = kisiTelTextField.text {
            
            let kisi = Kisiler(context: context)
            
            kisi.kisi_ad = ad
            kisi.kisi_tel = tel
            
            appDelegate.saveContext()
            
        }
        
        
        
    }
    

}
