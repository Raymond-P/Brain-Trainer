//
//  additionViewController.swift
//  BrainTrainer
//
//  Created by User on 12/4/17.
//  Copyright © 2017 Donelys.familia. All rights reserved.
//

import UIKit

var kidsMath: OperationBrain?

class additionViewController: UIViewController {
    
    
    var locationCorrectAnwer = 0
    var answer: Array<Int> = Array()
    @IBOutlet weak var countDown: UILabel!
    
    @IBOutlet var buttons: [UIButton]!
    
    
    @IBAction func answerButtons(_ sender: UIButton) {
        if sender.titleLabel?.text == kidsMath?.getAnswer() {
            kidsMath?.winGame()
        } else {
            kidsMath?.loseGame()
        }
        
    }
    
    @IBOutlet weak var operationLabel: UILabel!
    
    var time = 100
    var timer = Timer()
    
//    func assignNumbers() {
//        var potentialNumbers = [Int]()
//        potentialNumbers = (kidsMath?.returnArray())!
//        
////        for num in potentialNumbers {
////            print(num)
////        }
//        var i = 0
//        for button in buttons {
//            button.setTitle(String(potentialNumbers[i]), for: UIControlState.normal)
//            i += 1
//        }
//
//    }
//    @IBAction func startButton(_ sender: UIButton) {
//        kidsMath?.start()
//        operationLabel.text = kidsMath?.getLabel()
////        assignNumbers()
//        
//    }
    
    func action(){
        time = time-1
        countDown.text = String(time)
        if countDown.text == "0" {
            timer.invalidate()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
