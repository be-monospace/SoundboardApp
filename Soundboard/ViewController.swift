//
//  ViewController.swift
//  Soundboard
//
//  Created by Beatriz Novais on 18/06/2020.
//  Copyright © 2020 Beatriz Novais. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //OUTLETS
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    
    @IBOutlet weak var volumeSlider: UISlider!
    
    
    //VARS
    var soundEffect1: AVAudioPlayer = AVAudioPlayer()
    var soundEffect2: AVAudioPlayer = AVAudioPlayer()
    var soundEffect3: AVAudioPlayer = AVAudioPlayer()
    var soundEffect4: AVAudioPlayer = AVAudioPlayer()
    var soundEffect5: AVAudioPlayer = AVAudioPlayer()
    var soundEffect6: AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //CENTRAR IMAGEM NO BOTÃO
        button1.imageView?.contentMode = UIView.ContentMode.scaleAspectFit
        button2.imageView?.contentMode = UIView.ContentMode.scaleAspectFit
        button3.imageView?.contentMode = UIView.ContentMode.scaleAspectFit
        button4.imageView?.contentMode = UIView.ContentMode.scaleAspectFit
        button5.imageView?.contentMode = UIView.ContentMode.scaleAspectFit
        button6.imageView?.contentMode = UIView.ContentMode.scaleAspectFit
        
        let soundFile1 = Bundle.main.path(forResource: "Cat", ofType: "wav")
        let soundFile2 = Bundle.main.path(forResource: "Dog", ofType: "wav")
        let soundFile3 = Bundle.main.path(forResource: "Frog", ofType: "wav")
        let soundFile4 = Bundle.main.path(forResource: "Horse", ofType: "mp3")
        let soundFile5 = Bundle.main.path(forResource: "Pig", ofType: "wav")
        let soundFile6 = Bundle.main.path(forResource: "Sheep", ofType: "wav")
    
    
        do {
        
            try soundEffect1 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundFile1!))
            try soundEffect2 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundFile2!))
            try soundEffect3 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundFile3!))
            try soundEffect4 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundFile4!))
            try soundEffect5 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundFile5!))
            try soundEffect6 = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundFile6!))
        }
        
        catch {
        
        print(error)
        
        }

    }

    // ACTIONS
    
    @IBAction func cat(_ sender: Any) {
        soundEffect1.play()
    }
    
    @IBAction func dog(_ sender: Any) {
        soundEffect2.play()
    }
    
    @IBAction func Frog(_ sender: Any) {
        soundEffect3.play()
    }
    
    @IBAction func horse(_ sender: Any) {
        soundEffect4.play()
    }
    
    @IBAction func pig(_ sender: Any) {
        soundEffect5.play()
    }
    
    @IBAction func sheep(_ sender: Any) {
        soundEffect6.play()
    }
    
    
    @IBAction func volume(_ sender: Any) {
        soundEffect1.volume = volumeSlider.value
        soundEffect2.volume = volumeSlider.value
        soundEffect3.volume = volumeSlider.value
        soundEffect4.volume = volumeSlider.value
        soundEffect5.volume = volumeSlider.value
        soundEffect6.volume = volumeSlider.value
    }
    
}

