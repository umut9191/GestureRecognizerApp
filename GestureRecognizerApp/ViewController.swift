//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Mac on 25.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.isUserInteractionEnabled=true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    @objc func changePic(){
        if myLabel.text=="metallica1" {
            imageView.image = UIImage(named: "metallica2")
            myLabel.text="metallica2"
        }else{
            imageView.image = UIImage(named: "metallica1")
            myLabel.text="metallica1"
        }
       
    }

}

