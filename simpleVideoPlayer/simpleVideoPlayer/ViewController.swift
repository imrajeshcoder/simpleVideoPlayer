//
//  ViewController.swift
//  simpleVideoPlayer
//
//  Created by Vijay on 28/01/21.
//

import UIKit
import AVKit
import AVFoundation


class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        playVideo()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
       
    private func playVideo() {
                           
        
        guard let path = Bundle.main.path(forResource: "myvideo", ofType:"mp4" ) else {
                debugPrint("myvideo.mp4 not found")
                return
            }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
            let playerController = AVPlayerViewController()
            playerController.player = player
        
            present(playerController, animated: true) {
                player.play()
            }
        }

}

