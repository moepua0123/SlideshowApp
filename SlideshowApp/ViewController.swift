//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 西山萌花 on 2020/06/01.
//  Copyright © 2020 moeka.nishiyama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //部品のアウトレット接続
    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var backwordbutton: UIButton!
    
    @IBOutlet weak var startpausebutton: UIButton!
    
    @IBOutlet weak var forwordbutton: UIButton!
    //タイマー
    var timer: Timer!
    
    // タイマー用の時間のための変数
    var timer_sec: Float = 0
    
    //タイマーは２秒毎に呼び出される 質問する
    @objc func updateTimer(_ timer: Timer) {
        displayimagenumber += 1
        
        if displayimagenumber >= 5 {
            displayimagenumber = 0
            displayImage()
        } else {
            displayImage()
            
        }
    }
    
    //再生停止ボタン
    @IBAction func startpausebuttonTap(_ sender: Any) {
        
        //もしタイマーがなかったら、タイマーを設定する
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
            //ボタンの名前を停止に変わる
            startpausebutton.setTitle("停止", for: .normal)
            backwordbutton.isEnabled = false
            forwordbutton.isEnabled = false
        } else {
            //タイマーが動作していたら実行される　タイマーを止める処理
            self.timer.invalidate()   // タイマーを停止する
            self.timer = nil
            backwordbutton.isEnabled = true
            forwordbutton.isEnabled = true
            startpausebutton.setTitle("再生", for: .normal)
        }
    }
    
    //戻るボタン
    @IBAction func backwordbuttonTap(_ sender: Any) {
        displayimagenumber -= 1
        
        if displayimagenumber == -1 {
            displayimagenumber = 4
            displayImage()//もしdisplaynumberが１より小さくなったら、（１枚目の画像の時に戻るボタンを押したら、５枚目に戻る処理）
        } else {
            displayImage()
        }
        
        
        
    }
    
    //進むボタン　//displayimage実行のタイミング質問する
    @IBAction func forwordbuttonTap(_ sender: Any) {
        displayimagenumber += 1
        
        
        if displayimagenumber >= 5 {
            displayimagenumber = 0
            displayImage()
            //５枚目の画像を表示している時に進むボタンを押したら１枚目の画像が表示されるための処理
        } else {
            displayImage()
            
        }
        
        
        
    }
    
    //アプリを開いた時に画像が表示される
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage(named:imagenameArray[displayimagenumber])// Do any additional setup after loading the view.
        imageview.image = image
        
        
    }
    
    var displayimagenumber = 0
    let imagenameArray = ["kyoto1.jpg","kyoto2.jpg","kyoto3.jpg","kyoto4.jpg","kyoto5.jpg"]
    
    //画像の関数
    func displayImage(){
        imageview.image = UIImage(named:imagenameArray[displayimagenumber])
        
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        
        
        if timer != nil {
            startpausebutton.setTitle("再生", for: .normal)
            backwordbutton.isEnabled = true
            forwordbutton.isEnabled = true
            self.timer.invalidate()
            self.timer = nil
        }
        
        resultViewController.image = imageview.image!
    }
    
}


