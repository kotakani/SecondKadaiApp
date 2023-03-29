//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by yamadakota on 2023/03/29.
//

import UIKit

class ViewController: UIViewController {
    // 名前入力のUITextField
    @IBOutlet weak var NameText: UITextField!
    
    // 名前保存用の変数
    var nameTextString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func handle(_ sender: Any) {
        // NameTextから文字を取得
        nameTextString = NameText.text!
        
        // NameTextの中身をクリア
        NameText.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController: ResultViewController = segue.destination as! ResultViewController
        
        // 遷移先のResultViewControllerで宣言しているnameToHelloに値を代入して渡す
        resultViewController.nameToHello = nameTextString
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        // 他の画面からsegueを使って戻ってきた時に呼ばれる
    }

}

