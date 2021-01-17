//
//  TicTacToeBoard.swift
//  TicTacToe
//
//  Created by Lili Storm on 01172021--.
//

import Foundation

class TicTacToeBoard {
    var board : [[Int]]
    
    init() {
        board = [ [0, 0, 0],
                  [0, 0, 0],
                  [0, 0, 0] ]
    }
    
    func setOwner(
        x : Int,
        y : Int,
        newOwner : Int
    ) {
        board[y][x] = newOwner
    }
    
    func checkForWinner() -> Int {
        var winner = 0
        
        for y in 0...2 {
            if board[y][0] == 1 && board[y][1] == 1 && board[y][2] == 1 {
                winner = 1
            } else if board[y][0] == 2 && board[y][1] == 2 && board[y][2] == 2 {
                winner = 2
            }
        }
        
        for x in 0...2 {
            if board[0][x] == 1 && board[1][x] == 1 && board[2][x] == 1 {
                winner = 1
            } else if board[0][x] == 2 && board[1][x] == 2 && board[2][x] == 2 {
                winner = 2
            }
        }
        
        // TO DO check diagonal
        
        return winner

    }
}
