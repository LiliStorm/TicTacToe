//
//  ViewController.swift
//  TicTacToe
//
//  Created by Lili Storm on 01102021--.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func boardButtonPressed(_ sender: UIButton) {
        // print(sender.currentTitle!)
        print(sender.accessibilityLabel!)
        if (sender.currentTitle != nil) {
            return
        }
        
        let x_s : String = "" + sender.accessibilityLabel!.suffix(1)
        print(x_s)
        let y_s : String = "" + sender.accessibilityLabel!.prefix(1)
        print(y_s)
        
        let x = Int(x_s)
        let y = Int(y_s)
        
        
        if(playerTurn == 1) {
                sender.setTitle("X", for: .normal)
        } else {
            sender.setTitle("O", for: .normal)
        }
        processPressedButton(xPosition: x, yPosition: y)
    }
    
    var playerTurn : Int = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func processPressedButton(xPosition : Int?, yPosition : Int?) {
        print("It was player \(playerTurn).")
        if(playerTurn == 1) {
            playerTurn = 2
        } else {
            playerTurn = 1
        }
        
        print("It is now player \(playerTurn).")
    }

}

