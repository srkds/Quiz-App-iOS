//
//  Quiz.swift
//  Coding Quiz
//
//  Created by Nirav Patel on 07/04/20.
//  Copyright © 2020 Nirav Patel. All rights reserved.
//

import Foundation

struct Quiz {
    var text:String
    var answer:String
    
    init(q : String, a : String) {
        
        self.text = q
        self.answer = a
        
    }
    
}
