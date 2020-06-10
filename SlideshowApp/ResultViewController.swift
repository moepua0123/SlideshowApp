//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 西山萌花 on 2020/06/06.
//  Copyright © 2020 moeka.nishiyama. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var tappedImageView: UIImageView!
    var image :UIImage!
    //拡大画像を表示する
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tappedImageviewに選択された画像を表示する
        let result = image
        tappedImageView.image = result
        
        // Do any additional setup after loading the view.
    }
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
