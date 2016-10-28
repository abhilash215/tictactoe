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
    
    
    //playerIdentity is the identity of the current player.
    //playerIdentity is intially set to 1 (for player playing "X")
    //playerIdentity will toggle between 1 (for player playing "X") and 2 (for player playing "O")
    var playerIdentity: Int = 1
    
    
    //resetGame() resets the game state
    func resetGame() {
        //code to reset the board to all zeroes and the playerIdentity to 1
    }
    
    
    /*IMPLEMENT OTHER FUNCTIONS AS NEEDED*/
    
}
