//
//  ViewController.swift
//  TicTacToe
//
//  Created by Lili Storm on 01102021--.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var showPlayerTurn: UILabel!
    
    var board : TicTacToeBoard = TicTacToeBoard()
    var playerTurn : Int = 1
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resetBoard()
        showPlayerTurn.text = "Player 1's turn."
    }

    func processPressedButton(xPosition : Int, yPosition : Int) {
        board.setOwner(x: xPosition, y: yPosition, newOwner: playerTurn)
        
        if board.checkForWinner() != 0 {
            // TODO: popup showing winner. restart game?

            resetBoard()
            
        } else {
            if(playerTurn == 1) {
                playerTurn = 2
            } else {
                playerTurn = 1
            }
            
            showPlayerTurn.text = "Player \(playerTurn)'s turn."
            
            if board.checkIfBoardIsFull() {
                
                // TODO: game ended with no winner, show restart/back popup?
                
                resetBoard()
            }
        }
        
    }
    
    func resetBoard() {
        for subview in self.view.subviews {
            if subview is UIButton {
                let button = subview as! UIButton
                button.setTitle(nil, for: .normal)
                button.layer.borderWidth = 2
                button.layer.borderColor = UIColor.black.cgColor
                button.layer.backgroundColor = UIColor.white.cgColor
            }
        }
        
        playerTurn = 1
        board = TicTacToeBoard()
    }

}

