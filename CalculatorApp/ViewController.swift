//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Kensyo Sakurai on 2022/02/12.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var formulaLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    

    @IBAction func clearCalcuration(_ sender: UIButton) {
    }
    @IBAction func calcurarteAnswer(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // ビューがロードされた時点で式と答えのラベルは空にする
        formulaLabel.text = ""
        answerLabel.text = ""
    }
    
    @IBAction func inputFormula(_ sender: UIButton) {
        // ボタン（Cと＝以外）が押されたら式を表示する
        guard let formulaText = formulaLabel.text else {
            return
        }
        guard let senderdText = sender.titleLabel?.text else {
            return
        }
        formulaLabel.text = formulaText + senderdText
    }

}

