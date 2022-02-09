//
//  CommentGenerator.swift
//  CommentCardWriter
//
//  Created by Diab, Ahmed (HWTA) on 04/02/2022.
//

import Foundation

class CommentGenerator: ObservableObject{
    let enjoymentPhrases = ["really enjoying" ,"enjoying","somewhat enjoying", "not enjoying", "really not enjoying"]
    let subjectPhrases = ["Computer Science", "Maths", "English", "Physics", "Chemisty"]
    let effortPhrases = ["and think I am working really hard", "and I think I am working quite hard", "and I dont think I am working hard enough", "and I need to work a lot harder"]
    let understandingPhrases = ["I have a great understanding", "I have a good understanding", "I have a decent understanding", "I have a poor understanding"]
    let weaknessPhrases = ["I struggle to work in class", "I struggle with EWs", "I need to ask more question"]
    
    func generateComment(data: CommentData)-> String{
        let enjoymentPhrase = enjoymentPhrases[data.enjoyment]
        let subjectPhrase = subjectPhrases[data.subject]
        let effortPhrase = effortPhrases[data.effort]
        let understandingPhrase = understandingPhrases[data.understanding]
        let weakenssPhrase = weaknessPhrases[data.weakness]
        
        let comment = "I am \(enjoymentPhrase) \(subjectPhrase) this half and \(effortPhrase). \(understandingPhrase). \(weakenssPhrase)."
        return comment
        
    }
}
