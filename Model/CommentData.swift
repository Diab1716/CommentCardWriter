//
//  File.swift
//  CommentCardWriter
//
//  Created by Diab, Ahmed (HWTA) on 04/02/2022.
//

import Foundation

class CommentData{
    var enjoyment: Int
    var effort: Int
    var subject: String
    var understanding: Int
    var weakness: String
    
    init(enjoyment: Int, effort: Int, subject: String, understanding: Int, weakness: String){
        self.enjoyment = enjoyment
        self.effort = effort
        self.subject = subject
        self.understanding = understanding
        self.weakness = weakness
    }
}
