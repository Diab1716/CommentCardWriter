//
//  CommentGenerator.swift
//  CommentCardWriter
//
//  Created by Diab, Ahmed (HWTA) on 04/02/2022.
//

import Foundation

class CommentGenerator{
    let enjoymentPhrases = ["I am really enjoying" ,"I am enjoying ","I am somewhat enjoying ", "I am not enjoying ", "I am really not enjoying "]
    let subjectPhrases = ["Computer Science", "Maths", "English", "Physics", "Chemisty", "Biology"]
    let effortPhrases = ["and think I am working really hard", "and I think I am working quite hard", "and I dont think I am working hard enough", "and I need to work a lot harder"]
    let understandingPhrases = ["I have a great understanding", "I have a good understanding", "I have a decent understanding", "I have a poor understanding"]
    let weaknessPhrases = ["I struggle to work in class", "I struggle with EWs", "I need to ask more question"]
    var data: CommentData
    
    func generateComment(data: CommentData){
        var enjoymentPhrase = enjoymentPhrases[data.enjoyment]
        var subjectPhrase = subjectPhrases[data.subject]
        var effortPhrase = effortPhrases[data.effort]
        var understandingPhrase = understandingPhrases[data.understanding]
        var weakenssPhrase = weaknessPhrases[data.weakness]
        
        var comment = "\(enjoymentPhrase)"
        
    }
    
    
    init(data: CommentData){
        self.data = data
    }
}
