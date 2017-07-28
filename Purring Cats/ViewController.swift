//
//  ViewController.swift
//  Purring Cats
//
//  Created by its on 28/7/2017.
//  Copyright © 2017 freshsneezes. All rights reserved.
//

import UIKit
import AVFoundation
import SwiftySound

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tap: UITapGestureRecognizer =  UITapGestureRecognizer(target: self, action: #selector(ViewController.meow))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    func meow() {
        var player: AVAudioPlayer?
        
        let number = arc4random_uniform(4)
        if number == 0 {
            Sound.play(file: "Cat-noises.mp3")
        } else if number == 1 {
            Sound.play(file: "Cute-kitty-meowing.mp3")
        } else if number == 2 {
            Sound.play(file: "Kitty-noises.mp3")
        } else {
            Sound.play(file: "Meowing-sound.wav")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
/*
extension UIViewController {
    func meowWhenTapped() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.meow))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    func meow() {
        let number = arc4random_uniform(3)
        if number == 0 {
            let path = Bundle.main.path(forResource: "Cat-noises.mp3", ofType: nil)!
            let url = URL(fileURLWithPath: path)
            
            do {
                let sound = try AVAudioPlayer(contentsOf: url)
                let catMeow = sound
                catMeow.play()
                print ("0")
            } catch {
                return
            }
        } else if number == 1 {
            let path = Bundle.main.path(forResource: "Cute-kitty-meowing.mp3", ofType: nil)!
            let url = URL(fileURLWithPath: path)
            
            do {
                let sound = try AVAudioPlayer(contentsOf: url)
                let catMeow = sound
                catMeow.play()
                print ("1")
            } catch {
                return
            }
        } else if number == 2 {
            let path = Bundle.main.path(forResource: "Kitty-noises.mp3", ofType: nil)!
            let url = URL(fileURLWithPath: path)
            
            do {
                let sound = try AVAudioPlayer(contentsOf: url)
                let catMeow = sound
                catMeow.play()
                print ("2")
            } catch {
                return
            }
        } else {
            let path = Bundle.main.path(forResource: "Meowing-sound.wav", ofType: nil)!
            let url = URL(fileURLWithPath: path)
            
            do {
                let sound = try AVAudioPlayer(contentsOf: url)
                let catMeow = sound
                catMeow.play()
                print ("3")
            } catch {
                return
            }
        }
    }
}
*/
