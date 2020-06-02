//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 西山萌花 on 2020/06/01.
//  Copyright © 2020 moeka.nishiyama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var backwordbutton: UIButton!
    
    @IBOutlet weak var startpausebutton: UIButton!
    
    @IBOutlet weak var forwordbutton: UIButton!
    
    @IBAction func backwordbuttonTap(_ sender: Any) {
        if displayimagenumber < imagenameArray - 1 {
            displayimagenumber += 1
        }
        
    }
    @IBAction func srtartpausebuttonTap(_ sender: Any) {
    }
    @IBAction func forwordbuttonTap(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage(named: "kyoto1.jpg")// Do any additional setup after loading the view.
        imageview.image = image
        
    
        }
    
        var displayimagenumber = 0
               let imagenameArray = ["kyoto1","kyoto2","kyoto3","kyoto4","kyoto5"]
               
               func displayImage(){
                let name = imagenameArray [displayimagenumber]
        
       
    }


}

