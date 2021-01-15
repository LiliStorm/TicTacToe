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
        
        if(playerTurn == 1) {
                sender.setTitle("X", for: .normal)
        } else {
            sender.setTitle("O", for: .normal)
        }
        processPressedButton()
    }
    
    var playerTurn : Int = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func processPressedButton() {
        print("It was player \(playerTurn).")
        if(playerTurn == 1) {
            playerTurn = 2
        } else {
            playerTurn = 1
        }
        
        print("It is now player \(playerTurn).")
    }

}

