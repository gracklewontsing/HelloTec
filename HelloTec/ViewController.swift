//
//  ViewController.swift
//  HelloTec
//
//  Created by user190978 on 2/12/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(_ sender: UIButton) {

        var emojis = ["😔":"pensive", "🤠":"cowboy", "🐸":"frog"]
        
        let selectedButton = sender
        
        if let wordToLookup = selectedButton.titleLabel?.text {
            
            let emojiMeaning = emojis[wordToLookup]
            
            let alertController = UIAlertController(title: "My First App", message: "Hello " + emojiMeaning!, preferredStyle: UIAlertController.Style.alert)
            
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    
    }
}

