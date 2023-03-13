//
//  Card_SelectionVC.swift
//  Card_Work_Out
//
//  Created by Brandon Johns on 3/10/23.
//

import UIKit

class Card_SelectionVC: UIViewController {
    
    
    let cardImageView       = UIImageView()
    let stop_Button         = Card_Workout_Button(color: .systemRed, title: "Stop!", system_Image_Name: "stop.circle")
    let reset_Button        = Card_Workout_Button(color: .systemGreen, title: "Reset!", system_Image_Name: "arrow.clockwise.circle")
    let rules_Button        = Card_Workout_Button(color: .systemBlue, title: "Rules!" , system_Image_Name: "list.bullet")
    var cards: [UIImage]    = CardDeck.All_Values
    var timer: Timer!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        
        configureUI()
        start_Timer()
    }
    
    func start_Timer()
    {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(show_Random_Card), userInfo: nil, repeats: true)
    }
    
    @objc func stop_Timer()
    {
        timer.invalidate()
    }
    
    @objc func show_Random_Card()
    {
        cardImageView.image = cards.randomElement()
    }
    
    @objc func reset_Timer()
    {
        stop_Timer()
        start_Timer()
    }
    func configureUI()
    {
        configure_Card_Image_View()
        configure_Stop_Button()
        configure_Reset_Button()
        configure_Rules_Button()
    }
    
    func configure_Card_Image_View()
    {
        view.addSubview(cardImageView)
        cardImageView.translatesAutoresizingMaskIntoConstraints = false /// use autolayout
        cardImageView.image = UIImage(named: "AS")
        
        
        NSLayoutConstraint.activate([
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            cardImageView.heightAnchor.constraint(equalToConstant: 350),
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75)
        ])
    }

    
    func configure_Stop_Button()
    {
        view.addSubview(stop_Button)
        stop_Button.addTarget(self, action: #selector(stop_Timer) , for: .touchUpInside)
        NSLayoutConstraint.activate([
            stop_Button.widthAnchor.constraint(equalToConstant: 260),
            stop_Button.heightAnchor.constraint(equalToConstant: 50),
            stop_Button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stop_Button.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 30)
        ])
    }
    
    func configure_Reset_Button()
    {
        view.addSubview(reset_Button)
        reset_Button.addTarget(self, action: #selector(reset_Timer), for: .touchUpInside)
        NSLayoutConstraint.activate([
            reset_Button.widthAnchor.constraint(equalToConstant: 115),
            reset_Button.heightAnchor.constraint(equalToConstant: 50),
            reset_Button.leadingAnchor.constraint(equalTo: stop_Button.leadingAnchor),
            reset_Button.topAnchor.constraint(equalTo: stop_Button.bottomAnchor, constant: 20)
        ])
    }
    
    func configure_Rules_Button()
    {
        view.addSubview(rules_Button)
        rules_Button.addTarget(self, action: #selector(presentRulesVC), for: .touchUpInside)
        NSLayoutConstraint.activate([
            rules_Button.widthAnchor.constraint(equalToConstant: 115),
            rules_Button.heightAnchor.constraint(equalToConstant: 50),
            rules_Button.trailingAnchor.constraint(equalTo: stop_Button.trailingAnchor),
            rules_Button.topAnchor.constraint(equalTo: stop_Button.bottomAnchor, constant: 20)
        ])
    }
    
    @objc func presentRulesVC()
    {
        present(Rules_VC(), animated: true)
    }
}
