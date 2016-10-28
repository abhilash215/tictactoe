//
//  ticTacToeViewController.swift
//  TicTacToe
//
//  Created by teacher on 8/22/16.
//  Copyright © 2016 Swastik Brahma. All rights reserved.
//

import UIKit

class TicTacToeViewController: UIViewController {
    //game is an instance of TicTacToeBrain
    var game = TicTacToeBrain()
    
    
    //"buttons" is an array of IBOutlets
    //The first buttion connected to "buttons" will be connected to the first array location, 
    //the second button connected to "buttons" will be connected to the secondary array location, and so on.
    @IBOutlet var buttons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startNewGame()
    }
    
    
    
    //IBAction for buttons. All 9 buttons should invoke this IBAction.
    //Hint: The "tag" propery of a button can be used to find which button invoked this IBAction.
    @IBAction func buttonPressed(button: UIButton) {
        
    }
    
    
    //gameOverWithWinner(playerID: Int?) will need to be invoked when the game is over with the identity of
    //the winning player. If there is no winner, the function is called with nil (i.e., the function takes as input an Optional Int).
    //The function creates an UIAlertAction to notify the user of the game outcome along with
    //providing the option to start a new game
    func gameOverWithWinner(playerID: Int?) {
        let title = "Game Over"
        var message = String()
        
        if let ID = playerID {
             message = "Player \(ID) wins"
        }
        else {
             message = "No Winner"
        }
        
        let ac = UIAlertController(title: title,
                                   message: message,
                                   preferredStyle: .ActionSheet)
        
        let newGameAction = UIAlertAction(title: "New Game",
                                          style: .Default ,
                                          handler: { (action) -> Void in
                                           self.startNewGame()
                            })
        ac.addAction(newGameAction)
        
        presentViewController(ac, animated: true, completion: nil)
    }
    
    
    //startNewGame() resets the game state 
    func startNewGame() {
        game.resetGame()
        
        for i in 0...8 {
          //  buttons[i].setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
           // buttons[i].setTitle("", forState: .Normal)
        }
    }
    
    
    /*IMPLEMENT OTHER FUNCTIONS AS NEEDED*/
}
