//
//  Card_Workout_Button.swift
//  Card_Work_Out
//
//  Created by Brandon Johns on 3/10/23.
//

import UIKit

class Card_Workout_Button: UIButton {

    override init(frame: CGRect)
    {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(color: UIColor, title: String, system_Image_Name: String)
    {
        super.init(frame: .zero)
        
       
        configuration = .tinted()
        configuration?.title = title
        configuration?.baseForegroundColor = color
        configuration?.baseBackgroundColor = color
        configuration?.cornerStyle = .medium
        
        
        configuration?.image = UIImage(systemName: system_Image_Name)
        configuration?.imagePadding = 5
        configuration?.imagePlacement = .leading
        
        translatesAutoresizingMaskIntoConstraints = false
        
    }

}
