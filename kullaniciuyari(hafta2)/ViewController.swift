//
//  ViewController.swift
//  kullaniciuyari(hafta2)
//
//  Created by Aydanur MERAL on 20.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var kullanıcıAdıText: UITextField!
    @IBOutlet weak var şifreText: UITextField!
    
    @IBOutlet weak var şifre2Text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func kayıtButon(_ sender: Any) {
        if kullanıcıAdıText.text==""{
            uyarıVer(uyarıBaşlığı:"hata",mesajBaşlığı:"kullanıcı adı girmedin")
        }
        else if şifreText.text==""{
            uyarıVer(uyarıBaşlığı:"hata",mesajBaşlığı:"şifreyi girmedin")
        }
        else if şifreText.text!==şifre2Text.text {
            uyarıVer(uyarıBaşlığı:"hata",mesajBaşlığı:"şifreler aynı değil")
        }
        else{
            uyarıVer(uyarıBaşlığı:"başarılı",mesajBaşlığı:"Giriş başarılı")
        }
    }
    func uyarıVer(uyarıBaşlığı:String,mesajBaşlığı:String){
        let uyarı=UIAlertController(title: uyarıBaşlığı, message: mesajBaşlığı, preferredStyle: UIAlertController.Style.alert)
        let tamamButonu=UIAlertAction(title: uyarıBaşlığı, style: UIAlertAction.Style.default)
        uyarı.addAction(tamamButonu)
        self.present(uyarı,animated:true)
    }
    
}

