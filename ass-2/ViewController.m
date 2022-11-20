//
//  ViewController.swift
//  SliderGame
//
//  Created by Bharath Reddy on 17/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    var slider:UISlider? = nil;
    var hitMeValue:Float = 0;
    var scoreLabel:UILabel? = nil;
    var scoreValueLabel:UILabel? = nil;
    var allRoundsScore:[Float] = [];
    var info:UITextView? = nil;
    var startOverLabel:UILabel? = nil;
    var roundNoLabel:UILabel? = nil;
    var tryToHitLabel:UILabel? = nil;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Adding a slider
        slider = UISlider(frame:CGRect(x:60,y:100,width:300,height:20));
        slider?.minimumValue = 0
        slider?.maximumValue = 100
        slider?.isContinuous = false
        slider?.tintColor = UIColor.green
        slider?.addTarget(self, action: #selector(self.sliderMoved(_:)), for:.valueChanged);
        slider?.isEnabled=false
        view.addSubview(slider!);
        
        //Adding "Try to hit: " label
        tryToHitLabel=UILabel(frame:CGRect(x:60,y:200,width:300,height:20));
        tryToHitLabel?.textAlignment = .center;
        tryToHitLabel?.text="Try to hit:"
        view.addSubview(tryToHitLabel!);
        tryToHitLabel?.font = UIFont(name: "Halvetica", size: 500);
        
        //Adding a start Over button
        let myButton = UIButton(type: .system);
        myButton.frame = CGRect(x: 70, y: 400, width: 200, height: 80);
        myButton.setTitle("Start Over", for: .normal);
        myButton.addTarget(self, action: #selector(startOverClicked(_:)), for: .touchUpInside)
        view.addSubview(myButton);
        
        //Adding a 'score' Label
        scoreLabel=UILabel(frame:CGRect(x:70,y:485,width:200,height:80));
        scoreLabel!.textAlignment = .center;
        scoreLabel!.text="Score:";
        view.addSubview(scoreLabel!);
        scoreLabel!.font = UIFont(name: "Halvetica", size: 30)
        
        //Adding a label to display score
        scoreValueLabel=UILabel(frame:CGRect(x:190,y:485,width:200,height:80));
        scoreValueLabel!.textAlignment = .center;
        scoreValueLabel!.text="0";
        view.addSubview(scoreValueLabel!);
        scoreValueLabel!.font = UIFont(name: "Halvetica", size: 30)
        
        //Adding 'rounf' label
        let roundLabel=UILabel(frame:CGRect(x:70,y:570,width:200,height:80));
        roundLabel.textAlignment = .center;
        roundLabel.text="Round:";
        view.addSubview(roundLabel);
        roundLabel.font = UIFont(name: "Halvetica", size: 30)
        
        //Adding a label to display round no.
        roundNoLabel=UILabel(frame:CGRect(x:200,y:570,width:200,height:80));
        roundNoLabel?.textAlignment = .center;
        roundNoLabel?.text="";
        view.addSubview(roundNoLabel!);
        roundNoLabel?.font = UIFont(name: "Halvetica", size: 30)
        
        
        //Adding 'info' label
        let infoLabel=UILabel(frame:CGRect(x:70,y:650,width:200,height:80));
        infoLabel.textAlignment = .center;
        infoLabel.text="info";
        view.addSubview(infoLabel);
        infoLabel.font = UIFont(name: "Halvetica", size: 17)
        
        
    }
    
    @objc func startOverClicked(_ sender: UIButton) {
        print("labelTapped")
        slider?.isEnabled=true;
        resetScore();
        allRoundsScore=[]
        updateRoundLabel();
        updateHitMeLabel();
        
    }
    
    func updateHitMeLabel(){
        let number = Int.random(in: 1 ..< 101)
        hitMeValue = Float(number);
        tryToHitLabel?.text = "try to hit : " + String(hitMeValue);
    }
    
    
    @objc func sliderMoved(_ sender:UISlider){
        
        var currentRoundScore = hitMeValue - sender.value;
        if(currentRoundScore==0){
            currentRoundScore=hitMeValue;
        }
        allRoundsScore.append(currentRoundScore);
        updateRoundLabel();
		updateHitMeLabel();
        updateScore(score: currentRoundScore);
        sender.setValue(0, animated: true);
        print(sender.value);
    }
    
    func resetScore(){
        scoreValueLabel?.text="0";
        allRoundsScore=[];
        
    }
    func updateRoundLabel(){
        roundNoLabel?.text = String(allRoundsScore.count + 1);
        
    }
    
    func updateScore(score:Float){
        let currentTotalScore = scoreValueLabel?.text;
        let currentTotalScoreValue = Float(currentTotalScore ?? "0") ?? 0
        let newUpdatedScore = currentTotalScoreValue + score;
        scoreValueLabel?.text = String(newUpdatedScore);
    }
    
}

