//
//  ResultsViewController.swift
//  evidencia2
//
//  Created by Juan Miguel Flores on 12/04/24.
//

import UIKit

class ResultsViewController: UIViewController {
    
    
    @IBOutlet weak var resultAnswerLabel: UILabel!
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    
    
    var responses: [Answer]
    
    init?(coder: NSCoder, responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true
        
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
    
    func calculatePersonalityResult() {
        
        let frequencyOfAnswers = responses.reduce(into:
           [AnimalType: Int]()) { (counts, answer) in
            if let existingCount = counts[answer.type] {
                counts[answer.type] = existingCount + 1
            } else {
                counts[answer.type] = 1
            }
        }
 
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 >
           $1.1 }.first!.key

        resultAnswerLabel.text = "Tienes una personalidad \(mostCommonAnswer.rawValue)"
        resultDefinitionLabel.text = mostCommonAnswer.definition
    }
}
