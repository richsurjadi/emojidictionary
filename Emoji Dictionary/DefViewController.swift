//
//  DefViewController.swift
//  Emoji Dictionary
//
//  Created by Richard Surjadi on 12/5/16.
//  Copyright © 2016 Richard Surjadi. All rights reserved.
//

import UIKit

class DefViewController: UIViewController {
    
    
    @IBOutlet weak var defLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!

    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
  
        emojiLabel.text = emoji
        
        if emoji == "🍆" {
            defLabel.text = "Dick"}
        if emoji == "😂" {
            defLabel.text = "Laughing With Tears"}
        if emoji == "👍🏿" {
            defLabel.text = "Black Thumbs Up"}
        if emoji == "🤑" {
            defLabel.text = "Money Hungry"}
        if emoji == "😻" {
            defLabel.text = "Cat in Love"}
        if emoji == "🙏" {
            defLabel.text = "Pray/Give Thanks/Show Respect"}
        if emoji == "💩" {
            defLabel.text = "Poop"}
        if emoji == "💤" {
            defLabel.text = "Sleeping"}
        if emoji == "😱" {
            defLabel.text = "Shocked to the Very Core"}
        if emoji == "💇‍♂️" {
            defLabel.text = "Getting a Haircut"}
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
