//
//  QuizVegetableViewController.swift
//  ListeningQuiz
//
//  Created by Alisha on 2021/3/28.
//

import UIKit
import AVFoundation
class QuizVegetableViewController: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var quizImageView: UIImageView!
    @IBOutlet weak var correctAnswer: UILabel!
    @IBOutlet weak var soundBtn: UIButton!
    @IBOutlet weak var rateLabel: UILabel!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var answerView: UIStackView!
    @IBOutlet var answerBtnArray: [UIButton]!
    @IBOutlet weak var currentPointLabel: UILabel!
    
    //初始已回答題數
    var currentQuizNumber = 0
    //初始得分
    var point = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        //題目打亂
        quizVegetableArray.shuffle()
        speedSlider.value = 0.5
        speedSlider.maximumValue = 0.75
        speedSlider.minimumValue = 0.25
        rateLabel.text = "\(speedSlider.value)"
        //隱藏正確解答
        correctAnswer.isHidden = true
        //隱藏目前得分
        currentPointLabel.isHidden = true
        loadQuiz(quizNumber: currentQuizNumber)
    }
    //載入題目
    func loadQuiz(quizNumber:Int){
        
        let quizItem = quizVegetableArray[quizNumber]
        var answerOptions = quizItem.answers
        //選項打亂
        answerOptions.shuffle()
        quizImageView.image = UIImage(named: quizItem.quizImage)
        //correctAnswer在viewDidLoad已經隱藏，使用者看不見
        correctAnswer.text = quizItem.imageText
        //使用迴圈一次設定所有選項button
        for i in 0..<answerOptions.count {
            answerBtnArray[i].setTitle(answerOptions[i].option, for: .normal)
            answerBtnArray[i].setTitleColor(.red, for: .highlighted)
            answerBtnArray[i].tag = answerOptions[i].index
        }
        //進度條設定
        currentQuizNumber += 1
        progressBar.progress = Float(currentQuizNumber)/Float(quizVegetableArray.count)
    }
    // 滑動slider時顯示數值
    @IBAction func showRateValue(_ sender: UISlider) {
        rateLabel.text = String(format: "%.2f", speedSlider.value)
    }
    @IBAction func speak(_ sender: UIButton) {
        //發聲器讀取的文字是correctAnswer，若沒資料就預設顯示“answer”
        let speechUtterance = AVSpeechUtterance(string: correctAnswer.text ?? "answer")
        let synthesizer = AVSpeechSynthesizer()
        //必須先rate再speak
        speechUtterance.rate = speedSlider.value
        synthesizer.speak(speechUtterance)
    }
    
    //按下選項同時計算分數
    @IBAction func answer(_ sender: UIButton) {
        //將點選到的選項tag數值派給answerIndex
        let answerIndex = sender.tag
        //此處currentQuizNumber - 1，是因為在loadTest的時候已經載入過一次的題目
        let contentList = quizVegetableArray[currentQuizNumber - 1].answers
        let result = contentList[answerIndex].answerResult
        //計算分數
        if result == 1 {
            point += 1
        } else {
            point += 0
        }
        //目前得分，在viewDidLoad已經隱藏，使用者看不見
        currentPointLabel.text = "\(point)"
        //判斷是否作答完所有題目
        if currentQuizNumber == quizVegetableArray.count {
            print("題目作答結束，總分\(point)")
            //作答結束的時候，經由id是“Results”的segue連到另一個controller
            performSegue(withIdentifier: "VegetableResult", sender: sender)
        }else {
            //沒回答完繼續載入下一題
            loadQuiz(quizNumber: currentQuizNumber)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //設定controller的目的地是ResultViewController
        let controller = segue.destination as? ResultViewController
        //把目前的得分point指派到ResultViewController的score變數
        controller?.score = point
    }
    
}
    
