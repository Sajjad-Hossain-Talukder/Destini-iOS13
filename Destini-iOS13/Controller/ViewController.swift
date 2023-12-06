//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var tellStory = StoryBrain()
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = tellStory.getStory()
        choice1Button.setTitle(tellStory.getChoice(1), for: .normal )
        choice2Button.setTitle(tellStory.getChoice(2), for: .normal )
    }
    
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        print(sender.currentTitle!)
        tellStory.moveToNext(sender.currentTitle!)
        Timer.scheduledTimer( timeInterval: 0.5 , target: self, selector: #selector(nextChoice), userInfo: nil, repeats: false)
    }
    
    @objc func nextChoice () {
        storyLabel.text = tellStory.getStory()
        choice1Button.setTitle(tellStory.getChoice(1), for: .normal )
        choice2Button.setTitle(tellStory.getChoice(2), for: .normal )
    }
    


}

