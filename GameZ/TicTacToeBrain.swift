//
//  TicTacToe.swift
//  TicTacToe
//
//  Created by teacher on 8/22/16.
//  Copyright © 2016 Swastik Brahma. All rights reserved.
//

import UIKit

class TicTacToeBrain {
    //the game board as a 2D array
    //the board is intialized to all zeroes
    //each cell of the board can be made to store the playerIdentity (i.e., 1 or 2) depending on which player occupies that cell.
    var board = [[0, 0, 0],
                 [0, 0, 0],
                 [0, 0, 0]]
    var check: Bool = true
    var a : Int = 0
    var b: Int = 0
    var c : Int = 0
    
    //playerIdentity is the identity of the current player.
    //playerIdentity is intially set to 1 (for player playing "X")
    //playerIdentity will toggle between 1 (for player playing "X") and 2 (for player playing "O")
    var playerIdentity: Int = 1
    
    
    //resetGame() resets the game state
    func resetGame() {
        //code to reset the board to all zeroes and the playerIdentity to 1
        playerIdentity = 1
        board = [[0, 0, 0],
                 [0, 0, 0],
                 [0, 0, 0]]
        check =  true
        a=0
        b=0
        c=0
    }
    
    func changePlayer(){
        if(playerIdentity==1){
            playerIdentity=2
        }
        else if(playerIdentity==2)
        {
            playerIdentity=1
        }

    }
    
    
    func computeWinner()->Int {
        if(board[0][0]==board[0][1]) && (board[0][2]==board[0][1]) && (board[0][0] != 0) {
            a=0
            b=1
            c=2
            check = false
            let winner = board[0][1]
            return winner
        }
       else if(board[1][0]==board[1][1]) && (board[1][2]==board[1][1]) && (board[1][0] != 0) {
            check = false
            let winner = board[1][1]
            return winner
        }
        else if(board[2][0]==board[2][1]) && (board[2][2]==board[2][1]) && (board[2][0] != 0) {
            check = false
            let winner = board[2][1]
            return winner
        }
        else if(board[0][0]==board[1][0]) && (board[2][0]==board[1][0]) && (board[0][0] != 0) {
            check = false
            let winner = board[1][0]
            return winner
        }
        else if(board[0][1]==board[1][1]) && (board[2][1]==board[1][1]) && (board[1][1] != 0) {
            check = false
            let winner = board[1][1]
            return winner
        }
        else if(board[0][2]==board[1][2]) && (board[2][2]==board[1][2]) && (board[1][2] != 0) {
            check = false
            let winner = board[1][2]
            return winner
        }
        else if(board[0][0]==board[1][1]) && (board[2][2]==board[1][1]) && (board[1][1] != 0) {
            check = false
            let winner = board[1][1]
            return winner
        }
        else if(board[0][2]==board[1][1]) && (board[2][0]==board[1][1]) && (board[1][1] != 0) {
            check = false
            let winner = board[1][1]
            return winner
        }

        return 0
    }
    
    
    /*IMPLEMENT OTHER FUNCTIONS AS NEEDED*/
    
}
