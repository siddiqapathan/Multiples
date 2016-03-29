//
//  ViewController.swift
//  Multiples
//
//  Created by Siddiqa on 1/24/16.
//  Copyright (c) 2016 Siddiqa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Properties
    var sum = 0
    var multiplier = 0
    var counter = 0
    
    //Outlets
    @IBOutlet weak var MultiplesLogo : UIImageView!

    @IBOutlet weak var PlayBtn : UIButton!
    
    @IBOutlet weak var MultipleTxt : UITextField!
    
    @IBOutlet weak var AddLbl : UILabel!
    
    @IBOutlet weak var AddBtn : UIButton!
    
    @IBAction func onPlayBtnPressed(sender : UIButton)
    {
        counter = 0
        sum = 0
        multiplier = 0
        
        if MultipleTxt.text != nil && MultipleTxt.text != ""
        {
            MultiplesLogo.hidden = true
            MultipleTxt.hidden = true
            PlayBtn.hidden = true
            
            AddLbl.hidden = false
            AddBtn.hidden = false
            
            multiplier = Int(MultipleTxt.text!)!
        }
    }
    
    @IBAction func onAddBtnPressed(sender : UIButton)
    {
        if counter == 10
        {
            MultipleTxt.text = ""
            MultiplesLogo.hidden = false
            MultipleTxt.hidden = false
            PlayBtn.hidden = false
            
            AddLbl.text = "Press Add to add!"
            AddLbl.hidden = true
            AddBtn.hidden = true
        }
        else
        {
            AddLbl.text = "\(sum) + \(multiplier) = \(sum + multiplier)"
            sum += multiplier
        
            counter++
        }
    }

   
}

