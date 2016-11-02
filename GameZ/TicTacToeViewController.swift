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
    var playeridforwinner = 0
    var i:Int = 0
    var j:Int = 0
    var count :Int = 0
    
    
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
    @IBAction func buttonPressed(button : AnyObject)
    {
        let index=button.tag
        let checkValue=button.tag
        
        if(checkValue == 0)
        {
            i=0
            j=0
        }
        else if(checkValue == 1)
        {
            i=0
            j=1
        }
        else if(checkValue == 2)
        {
            i=0
            j=2
        }
        else if(checkValue == 3)
        {
            i=1
            j=0
        }
        else if(checkValue == 4)
        {
            i=1
            j=1
        }
        else if(checkValue == 5)
        {
            i=1
            j=2
        }
        else if(checkValue == 6)
        {
            i=2
            j=0
        }
        else if(checkValue == 7)
        {
            i=2
            j=1
        }
        else
        {
            i=2
            j=2
        }
        
        if((game.check == true) && (game.board[i][j] == 0))
        {
            count = count + 1
            if game.playerIdentity == 1{
            button.setTitle("X", forState: UIControlState.Normal)
            button.setTitleColor(UIColor.blackColor(), forState:  UIControlState.Normal)
                if(game.a == 0 && game.b == 1 && game.c == 2){
                    button.setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
                }
            }
            else if game.playerIdentity == 2{
            button.setTitle("0", forState: UIControlState.Normal)
           button.setTitleColor(UIColor.redColor(), forState:  UIControlState.Normal)
        }
        
        
        switch index{
        case 0:
            game.board[0][0]=game.playerIdentity
            game.changePlayer()
            break
        case 1:
            game.board[0][1]=game.playerIdentity
             game.changePlayer()
            break
        case 2:
            game.board[0][2]=game.playerIdentity
             game.changePlayer()
            break
        case 3:
            game.board[1][0]=game.playerIdentity
             game.changePlayer()
            break
        case 4:
            game.board[1][1]=game.playerIdentity
             game.changePlayer()
            break
        case 5:
            game.board[1][2]=game.playerIdentity
             game.changePlayer()
            break
        case 6:
            game.board[2][0]=game.playerIdentity
             game.changePlayer()
            break
        case 7:
            game.board[2][1]=game.playerIdentity
             game.changePlayer()
            break
        case 8:
            game.board[2][2]=game.playerIdentity
             game.changePlayer()
            break
        default:
            print("default value")
        }
        
       // game.computeWinner()
        playeridforwinner=game.computeWinner()
        if(playeridforwinner==0 && game.check == false){
            gameOverWithWinner(nil)
        }
        else if((playeridforwinner == 1 || playeridforwinner == 2) && game.check == false)
        {
            buttons[game.a].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
            buttons[game.b].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
            buttons[game.c].setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
             gameOverWithWinner(playeridforwinner)
        }
           
        
            if(count == 9){
                gameOverWithWinner(nil)
                
            }
        }
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
        count = 0
        game.resetGame()
        i = 0
        j = 0
        for i in 0...8 {
            buttons[i].setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
            buttons[i].setTitle("", forState: .Normal)
        }
    }
}
