//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Richard Surjadi on 12/5/16.
//  Copyright © 2016 Richard Surjadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var TableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        TableView.dataSource = self
        TableView.delegate = self
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "MoveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let DefVC = segue.destination as! DefViewController
        DefVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😂"
        emoji1.category = "Smiley"
        emoji1.birthYear = 2011
        emoji1.definition = "Laughing with tears"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "👍🏿"
        emoji2.category = "Hand"
        emoji2.birthYear = 2011
        emoji2.definition = "Black Thumbs Up"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🤑"
        emoji3.category = "Smiley"
        emoji3.birthYear = 2011
        emoji3.definition = "Money hungry"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😻"
        emoji4.category = "Smiley"
        emoji4.birthYear = 2011
        emoji4.definition = "Cat In Love"
        
        return[emoji1, emoji2, emoji3, emoji4]
    }

}

