//
//  ViewController.swift
//  sampleActionSheet
//
//  Created by 小林由知 on 2017/10/24.
//  Copyright © 2017年 Yoshitomo Kobatashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Selectボタンが押された時に発動
    @IBAction func tapSelect(_ sender: UIButton) {
        
        //アクションシート作成
        let actionSheet = UIAlertController(
            title: "どのアクティビティにする？",
            message: "今日のアクティビティ",
            preferredStyle: .actionSheet)
        
        //アクティビティボタン1を追加
//        actionSheet.addAction(UIAlertAction(
//            title: "ヨガ",
//            style: .default,
//            handler: {action in self.myLabel.text = "ヨガろう！"}))
        
        actionSheet.addAction(UIAlertAction(
            title: "ヨガ",
            style: .default,
            handler: {action in self.activity(name: "ヨガ")}))

        //アクティビティボタン2を追加
        actionSheet.addAction(UIAlertAction(
            title: "バスケ",
            style: .default,
            handler: {action in self.activity(name: "バスケ")}))
        
        //削除ボタンを追加
        actionSheet.addAction(UIAlertAction(
            title: "ムエタイ",
            style: .destructive,
            handler: {action in self.Destructive(name: "痛いけどいいの？！")}))
        
        
        //キャンセルボタンを追加
        actionSheet.addAction(UIAlertAction(
            title: "今日はやめとく〜",
            style: .cancel,
            handler: {action in self.Cansel(name: "今日は無理！")}))
        
        //アクションシートを表示
        present(actionSheet,
            animated: true,
            completion: nil)
    }
    
    //アクティビティボタンが押されたら起動する自作関数
    //Activity関数名
    //name引数（ひきすう）呼び出された所で処理をするための情報をもらう時に使用する
    //name: String 引数＠＠＠＠＠＠＠＠＠＠＠＠＠＠
    
    //TODO:Activty関数を、使ってバスケの処理を、実行できるようにしてください。
    func activity(name:String){
        myLabel.text = "\(name)ろう！"
    }
    
    //TODO:Destructive関数を、作ってムエタイが押された時に、呼び出してください。（引数不要）
    func Destructive(name:String){
        myLabel.text = "\(name)と言ってます。"
    }
    
    //TODO:Cansel関数を作って、「今日はやめとく」が押された時に、呼び出してください。（引数不要）
    func Cansel(name:String){
        myLabel.text = "\(name)まじで無理！"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

