//
//  CommentGenerator.swift
//  CommentCardWriter
//
//  Created by Diab, Ahmed (HWTA) on 04/02/2022.
//

import Foundation

class CommentGenerator: ObservableObject{
    let enjoymentPhrases = ["really enjoying" ,"enjoying","somewhat enjoying", "not enjoying", "really not enjoying", "hating"]
    let subjectPhrases = ["Computer Science", "Maths", "English", "Physics", "Chemistry"]
    let effortPhrases = ["working really hard", "working quite hard", "not working hard enough", "not working anywhere near hard enough"]
    let understandingPhrases = ["great", "good", "decent", "poor", "shockingly bad"]
    let weaknessPhrases = ["I struggle to work in class", "I struggle with EWs", "I need to ask more question"]
    
    func generateComment(data: CommentData)-> String{
        let enjoymentPhrase = enjoymentPhrases[data.enjoyment]
        let subjectPhrase = subjectPhrases[data.subject]
        let effortPhrase = effortPhrases[data.effort]
        let understandingPhrase = understandingPhrases[data.understanding]
        let weaknessPhrase = weaknessPhrases[data.weakness]
        
        let comment = "I am \(enjoymentPhrase) \(subjectPhrase) this half and I think I am \(effortPhrase). I have a \(understandingPhrase) understanding of the material we have covered thus far. \(weaknessPhrase)."
        return comment
        
    }
}
