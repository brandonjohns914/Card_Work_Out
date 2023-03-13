//
//  Rules_VC.swift
//  Card_Work_Out
//
//  Created by Brandon Johns on 3/10/23.
//

import UIKit

class Rules_VC: UIViewController {

    let title_Label     = UILabel()
    let rules_Label     = UILabel()
    let exercise_Label  = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        configure_Title_Label()
        configure_Rules_Label()
        configure_Exercise_Label()
    }
    
    func configure_Title_Label()
    {
        view.addSubview(title_Label)
        title_Label.translatesAutoresizingMaskIntoConstraints = false
        title_Label.text = "Rules"
        title_Label.font = .systemFont(ofSize: 40, weight: .bold)
        title_Label.textAlignment = .center
        
        NSLayoutConstraint.activate([
            title_Label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            title_Label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:  30),
            title_Label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    func configure_Rules_Label()
    {
        view.addSubview(rules_Label)
        rules_Label.translatesAutoresizingMaskIntoConstraints = false
        rules_Label.text = "The value of each card represents the number of exercise you do \n\n J = 11, Q = 12, K = 13, A = 14"
        rules_Label.font = .systemFont(ofSize: 20, weight: .semibold)
        rules_Label.textAlignment = .center
        rules_Label.lineBreakMode = . byWordWrapping
        rules_Label.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            rules_Label.topAnchor.constraint(equalTo: title_Label.bottomAnchor, constant: 25),
            rules_Label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:  30),
            rules_Label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        
        ])
        
        
    }
   
    func configure_Exercise_Label()
    {
        view.addSubview(exercise_Label)
        exercise_Label.translatesAutoresizingMaskIntoConstraints = false
        exercise_Label.text = "♠️ = Push-ups\n\n♥️ = Sit ups\n\n♣️ = Burpees\n\n♦️ = Jumping Jacks"
        exercise_Label.font = .systemFont(ofSize: 20, weight: .semibold)
        exercise_Label.textAlignment = .left
        exercise_Label.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            exercise_Label.topAnchor.constraint(equalTo: rules_Label.bottomAnchor, constant: 60),
            exercise_Label.widthAnchor.constraint(equalToConstant: 200),
            exercise_Label.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
        ])
        
        
    }


}
