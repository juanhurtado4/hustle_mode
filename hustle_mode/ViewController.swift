//
//  ViewController.swift
//  hustle_mode
//
//  Created by juan hurtado on 10/15/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {


    @IBOutlet weak var darkBlueBackground: UIImageView!
    @IBOutlet weak var powerButton: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var hustleLable: UILabel!
    @IBOutlet weak var onLable: UILabel!
    
    var player: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
//        let url = URL(fileURLWithPath: path)
//            do {
//                player = try AVAudioPlayer(contentsOf: url)
//                player.prepareToPlay()
//            } catch let error as NSError {
//                print(error.description)
//        }
    }

    @IBAction func powerButtonPressed(_ sender: Any) {
        cloudHolder.isHidden = false
        darkBlueBackground.isHidden = true
        powerButton.isHidden = true
        
//        player.play()
        
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 140, width: 375, height: 402)
        }) { (finished) in
            self.hustleLable.isHidden = false
            self.onLable.isHidden = false
        }
    }
    

}

