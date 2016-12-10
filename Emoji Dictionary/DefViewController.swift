//
//  DefViewController.swift
//  Emoji Dictionary
//
//  Created by Richard Surjadi on 12/5/16.
//  Copyright © 2016 Richard Surjadi. All rights reserved.
//

import UIKit

class DefViewController: UIViewController {
    
    @IBOutlet weak var birthyearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var defLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!

    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
  
        emojiLabel.text = emoji.stringEmoji
        birthyearLabel.text = "Birthyear : \(emoji.birthYear)"
        categoryLabel.text = "Category : \(emoji.category)"
        defLabel.text = (emoji.definition)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
