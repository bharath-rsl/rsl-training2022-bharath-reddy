
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
    var myButton:UIButton? = nil;
    var roundLabel:UILabel? = nil;
    var infoLabel:UILabel? = nil;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=UIColor.yellow;
        // Do any additional setup after loading the view.
        //Adding a slider
        //slider = UISlider(frame:CGRect(x:60,y:100,width:300,height:20));
        slider = UISlider(frame:CGRect.zero);
        
        slider?.minimumValue = 0
        slider?.maximumValue = 100
        slider?.isContinuous = false
        slider?.tintColor = UIColor.green
        slider?.addTarget(self, action: #selector(self.sliderMoved(_:)), for:.valueChanged);
        slider?.isEnabled=false
        view.addSubview(slider!);
        
        
        
        //Adding "Try to hit: " label
        //tryToHitLabel=UILabel(frame:CGRect(x:60,y:200,width:300,height:20));
        tryToHitLabel?.translatesAutoresizingMaskIntoConstraints=false;
        tryToHitLabel=UILabel(frame:CGRect.zero);
        tryToHitLabel?.textAlignment = .center;
        tryToHitLabel?.text="Try to hit:"
        view.addSubview(tryToHitLabel!);
        tryToHitLabel?.font = UIFont(name: "Halvetica", size: 500);
        
        
        //Adding a start Over button
        myButton = UIButton(type: .system);
        //myButton.frame = CGRect(x: 70, y: 400, width: 200, height: 80);
        myButton?.translatesAutoresizingMaskIntoConstraints = false;
        myButton?.frame=CGRect.zero;
        myButton?.setTitle("Start Over", for: .normal);
        myButton?.addTarget(self, action: #selector(startOverClicked(_:)), for: .touchUpInside)
        view.addSubview(myButton!);
        
        
        
        //Adding a 'score' Label
        //scoreLabel=UILabel(frame:CGRect(x:70,y:485,width:200,height:80));
        scoreLabel = UILabel(frame:CGRect.zero);
        scoreLabel?.translatesAutoresizingMaskIntoConstraints = false;
        scoreLabel!.textAlignment = .center;
        scoreLabel!.text="Score:";
        view.addSubview(scoreLabel!);
        //scoreLabel!.font = UIFont(name: "Halvetica", size: 30)
        
        
        //Adding a label to display score
        //scoreValueLabel=UILabel(frame:CGRect(x:190,y:485,width:200,height:80));
        scoreValueLabel = UILabel(frame:CGRect.zero);
        scoreValueLabel?.translatesAutoresizingMaskIntoConstraints = false;
        scoreValueLabel!.textAlignment = .center;
        scoreValueLabel!.text="0";
        view.addSubview(scoreValueLabel!);
        // scoreValueLabel!.font = UIFont(name: "Halvetica", size: 30)
        
        
        
        //Adding 'rounf' label
        //let roundLabel=UILabel(frame:CGRect(x:70,y:570,width:200,height:80));
        roundLabel = UILabel(frame:CGRect.zero);
        roundLabel?.translatesAutoresizingMaskIntoConstraints = false;
        roundLabel?.textAlignment = .center;
        roundLabel?.text="Round:";
        view.addSubview(roundLabel!);
        roundLabel?.font = UIFont(name: "Halvetica", size: 30)
        
        
        
        //Adding a label to display round no.
        // roundNoLabel=UILabel(frame:CGRect(x:200,y:570,width:200,height:80));
        roundNoLabel = UILabel(frame:CGRect.zero);
        roundNoLabel?.translatesAutoresizingMaskIntoConstraints = false;
        roundNoLabel?.textAlignment = .center;
        roundNoLabel?.text="";
        view.addSubview(roundNoLabel!);
        roundNoLabel?.font = UIFont(name: "Halvetica", size: 30)
        
        
        
        //Adding 'info' label
        //let infoLabel=UILabel(frame:CGRect(x:70,y:650,width:200,height:80));
        infoLabel=UILabel(frame:CGRect.zero);
        infoLabel?.translatesAutoresizingMaskIntoConstraints = false;
        infoLabel?.textAlignment = .center;
        infoLabel?.text="info";
        view.addSubview(infoLabel!);
        infoLabel?.font = UIFont(name: "Halvetica", size: 17)
        
        self.applyConstraints();
    }
    
    func applyConstraints(){
        var constraints:[NSLayoutConstraint] = [];
        slider?.translatesAutoresizingMaskIntoConstraints = false;
        constraints.append((slider?.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor,constant: 100))!);
        constraints.append((slider?.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor))!);
        constraints.append((slider?.widthAnchor.constraint(equalToConstant: 300))!);
        constraints.append((slider?.heightAnchor.constraint(equalToConstant: 20))!);
        
        
        tryToHitLabel?.translatesAutoresizingMaskIntoConstraints = false;
        
        constraints.append((tryToHitLabel?.topAnchor.constraint(equalTo:slider!.bottomAnchor, constant:50))!);
        constraints.append((tryToHitLabel?.centerXAnchor.constraint(equalTo:view.safeAreaLayoutGuide.centerXAnchor))!);
        constraints.append((tryToHitLabel?.widthAnchor.constraint(equalToConstant: 300))!);
        constraints.append((tryToHitLabel?.heightAnchor.constraint(equalToConstant: 20))!);
        
        constraints.append((myButton?.topAnchor.constraint(equalTo: tryToHitLabel!.bottomAnchor, constant:50))!);
        constraints.append((myButton?.centerXAnchor.constraint(equalTo:view.safeAreaLayoutGuide.centerXAnchor))!);
        constraints.append((myButton?.widthAnchor.constraint(equalToConstant: 200))!);
        constraints.append((myButton?.heightAnchor.constraint(equalToConstant: 80))!);
        
        constraints.append((scoreLabel?.topAnchor.constraint(equalTo: myButton!.bottomAnchor, constant: 30))!);
        constraints.append((scoreLabel?.centerXAnchor.constraint(equalTo:view.safeAreaLayoutGuide.centerXAnchor))!);
        constraints.append((scoreLabel?.widthAnchor.constraint(equalToConstant:200))!);
        constraints.append((scoreLabel?.heightAnchor.constraint(equalToConstant: 80))!);
        
        
        constraints.append((scoreValueLabel?.topAnchor.constraint(equalTo: myButton!.bottomAnchor, constant: 30))!);
        constraints.append((scoreValueLabel?.leadingAnchor.constraint(equalTo: scoreLabel!.trailingAnchor, constant: -50))!);
        constraints.append((scoreValueLabel?.heightAnchor.constraint(equalToConstant:80))!);
        
        constraints.append((roundLabel?.topAnchor.constraint(equalTo: scoreValueLabel!.bottomAnchor, constant: 30))!);
        constraints.append((roundLabel?.centerXAnchor.constraint(equalTo:view.safeAreaLayoutGuide.centerXAnchor))!);
        constraints.append((roundLabel?.widthAnchor.constraint(equalToConstant: 200))!);
        constraints.append((roundLabel?.heightAnchor.constraint(equalToConstant: 80))!);
        
        constraints.append((roundNoLabel?.topAnchor.constraint(equalTo: scoreValueLabel!.bottomAnchor, constant:30))!);
        constraints.append((roundNoLabel?.leadingAnchor.constraint(equalTo:roundLabel!.trailingAnchor, constant: -50))!);
        constraints.append((roundNoLabel?.heightAnchor.constraint(equalToConstant: 80))!);
        
        constraints.append((infoLabel?.topAnchor.constraint(equalTo: roundLabel!.bottomAnchor, constant: 30))!);
        constraints.append((infoLabel?.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor))!);
        constraints.append((infoLabel?.heightAnchor.constraint(equalToConstant: 80))!);
        constraints.append((infoLabel?.widthAnchor.constraint(equalToConstant: 200))!);
        NSLayoutConstraint.activate(constraints);
        
        
        
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
        updateHitMeLabel()
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

