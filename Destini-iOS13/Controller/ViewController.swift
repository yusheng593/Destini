//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    let storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyBrain.arrStories[0].title
        choice1Button.setTitle(storyBrain.arrStories[0].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.arrStories[0].choice2, for: .normal)

    }
    
    @IBAction func choiceBtnPressed(_ sender: UIButton) {
        let stories = storyBrain.arrStories
        switch sender.currentTitle {
        case stories[0].choice1:
            updateUI(Destination: 2)
        case stories[0].choice2:
            updateUI(Destination: 1)
        case stories[1].choice1:
            updateUI(Destination: 2)
        case stories[1].choice2:
            updateUI(Destination: 3)
        case stories[2].choice1:
            updateUI(Destination: 5)
        case stories[2].choice1:
            updateUI(Destination: 4)
        case stories[3].choice1:
            updateUI(Destination: 0)
        default:
            updateUI(Destination: 0)
        }
        
    }
    
    func updateUI(Destination: Int) {
        storyLabel.text = storyBrain.arrStories[Destination].title
        choice1Button.setTitle(storyBrain.arrStories[Destination].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.arrStories[Destination].choice2, for: .normal)
    }


}

