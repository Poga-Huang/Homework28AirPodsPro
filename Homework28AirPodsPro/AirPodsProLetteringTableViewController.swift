//
//  AirPodsProLetteringTableViewController.swift
//  Homework28AirPodsPro
//
//  Created by 黃柏嘉 on 2021/12/1.
//

import UIKit

class AirPodsProLetteringTableViewController: UITableViewController {

    @IBOutlet weak var letteringLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func lettering(_ sender: UITextField) {
        if let inputText = sender.text{
            if inputText.count > 4{
                alert()
                sender.text?.removeLast()
            }else{
                letteringLabel.text = sender.text
            }
        }
    }
    func alert(){
        //本體
        let alert = UIAlertController(title: "提示", message: "字元已超過四個", preferredStyle: .alert)
        //按鈕
        let okAction = UIAlertAction(title: "OK", style: .default) { (okAction) in
            alert.dismiss(animated: true, completion: nil)
        }
        //將按鈕加入本體
        alert.addAction(okAction)
        //present出來
        present(alert, animated: true, completion: nil)
    }
    @IBAction func closeKeyboard(_ sender: UITextField) {
        view.endEditing(true)
    }
    
 
}
