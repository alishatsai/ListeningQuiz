//
//  ResultViewController.swift
//  MyQuizApp
//
//  Created by Alisha on 2021/3/16.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var scoreImage: UIImageView!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var menuButton: UIButton!
    
    //獲取前一頁的point總分
    var score : Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Score"
        scoreLabel.text = String(score)
        commentLabel.text = " "
        commentLabel.textAlignment = .center
        menuButton.setTitle("回到目錄", for: .highlighted)
        menuButton.setTitle("Menu", for: .normal)
        menuButton.layer.cornerRadius = 15
        result()
    }
    
    func result() {
        switch score {
        case 0,1,2,3,4:
            scoreImage.image = UIImage(named: "cry.png")
            commentLabel.text = "不要氣餒！下次再努力..."
        case 5:
            scoreImage.image = UIImage(named: "shock.png")
            commentLabel.text = "喔不！差一點點就及格了！"
        case 6,7:
            scoreImage.image = UIImage(named: "good.png")
            commentLabel.text = "還不錯喔！請繼續加油！"
        case 8,9:
            scoreImage.image = UIImage(named: "happy.png")
            commentLabel.text = "很棒喔！真替你開心！"
        case 10:
            scoreImage.image = UIImage(named: "perfect.png")
            commentLabel.text = "恭喜！獲得滿分！"
        default:
            print("default")
        }
    }
    //回到選單
    @IBAction func returnTopicPage(_ sender: Any) {
        let  vc =  self.navigationController?.viewControllers[1]
        self.navigationController?.popToViewController(vc!, animated: true)
    }
}
