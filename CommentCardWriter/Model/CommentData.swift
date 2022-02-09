//
//  File.swift
//  CommentCardWriter
//
//  Created by Diab, Ahmed (HWTA) on 04/02/2022.
//

import Foundation

class CommentData: ObservableObject{
   @Published var enjoyment: Int
   @Published var effort: Int
   @Published var subject: Int
   @Published var understanding: Int
   @Published var weakness: Int
    
    init(enjoyment: Int, effort: Int, subject: Int, understanding: Int, weakness: Int){
        self.enjoyment = enjoyment
        self.effort = effort
        self.subject = subject
        self.understanding = understanding
        self.weakness = weakness
    }
}
