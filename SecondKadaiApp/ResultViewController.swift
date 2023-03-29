//
//  ResultViewController.swift
//  SecondKadaiApp
//
//  Created by yamadakota on 2023/03/29.
//

import UIKit

class ResultViewController: UIViewController {
    // 2画面目のLabelをStoryboardでこのViewControllerにIBOutletとして接続しておく
    @IBOutlet weak var helloName: UILabel!
    
    // 受け取るためのプロパティ(変数)を宣言しておく
    var nameToHello:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // 上記ではnameToHelloを""と宣言していたが，
        // 1画面目のViewControllerから遷移する時にprepareForSegueで
        // nameToHelloの値を新たに代入されたので，入力された名前が入っている
        let result = nameToHello
        helloName.text = "こんにちは、\(nameToHello)さん"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
