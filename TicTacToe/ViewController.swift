//
//  ViewController.swift
//  TicTacToe
//
//  Created by Lili Storm on 01102021--.
//

import UIKit

class ViewController: UIViewController {
    
    let board : TicTacToeBoard = TicTacToeBoard()
    
    @IBAction func boardButtonPressed(_ sender: UIButton) {
        if (sender.currentTitle != nil) {
            return
        }
        
        let x_s : String = "" + sender.accessibilityLabel!.suffix(1)
        let y_s : String = "" + sender.accessibilityLabel!.prefix(1)
        
        let x = Int(x_s)
        let y = Int(y_s)
        
        
        if(playerTurn == 1) {
                sender.setTitle("X", for: .normal)
        } else {
            sender.setTitle("O", for: .normal)
        }
        processPressedButton(xPosition: x!, yPosition: y!)
    }
    
    var playerTurn : Int = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func processPressedButton(xPosition : Int, yPosition : Int) {
        board.setOwner(x: xPosition, y: yPosition, newOwner: playerTurn)
        
        print(board.checkForWinner())
        
        if(playerTurn == 1) {
            playerTurn = 2
        } else {
            playerTurn = 1
        }
    }

}

