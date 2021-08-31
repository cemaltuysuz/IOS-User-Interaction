//
//  ViewController.swift
//  Basic Alert
//
//  Created by cemal tüysüz on 31.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func BasicAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Title", message: "your message", preferredStyle: .alert)
        
        // Dismiss Action
        let dismiss = UIAlertAction(title: "Dismiss", style: .cancel){
            action in
            self.labelResult.text = "Basic alert dismiss"}
        
        alert.addAction(dismiss) // Dismiss action inserted to alert
        
        // Ok Action
        let ok = UIAlertAction(title: "Okey", style: .default){
            action in
            self.labelResult.text = "Basic alert ok"}
        
        alert.addAction(ok) // Ok Action inserted to alert
        
        self.present(alert,animated: true)
    }
    
    
    @IBAction func privateAlert(_ sender: Any) {
        
        let alert = UIAlertController(title: "Title", message: "your message", preferredStyle: .alert)
        
        alert.addTextField{ textfield in
            textfield.placeholder = "e-mail"
            textfield.keyboardType = .emailAddress
        }
        alert.addTextField{ textfield in
            textfield.placeholder = "password"
            textfield.isSecureTextEntry = true
            
        }
        
        // Dismiss Action
        let save = UIAlertAction(title: "Save", style: .cancel){
            action in
            let mail = (alert.textFields![0] as UITextField).text
            let password = (alert.textFields![1] as UITextField).text
            self.labelResult.text = "Mail : \(mail!) pass : \(password!)"
            
        }
        
        alert.addAction(save) // Dismiss action inserted to alert
        
        self.present(alert,animated: true)
    }
    
    @IBAction func ActionSheet(_ sender: Any) {
    }
}

