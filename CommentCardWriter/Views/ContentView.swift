//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Diab, Ahmed (HWTA) on 04/02/2022.
//

import SwiftUI
struct ContentView: View {
    @StateObject var commentData: CommentData
    var commentGenerator: CommentGenerator
    var body: some View {
        
        Form{
            Button("Enjoyment: \(commentGenerator.enjoymentPhrases[commentData.enjoyment].capitalized)", action: {commentData.enjoyment += 1
                if commentData.enjoyment > commentGenerator.enjoymentPhrases.count-1{
                commentData.enjoyment = 0
            }
        })
            Button("Subject: \(commentGenerator.subjectPhrases[commentData.subject].capitalized)", action: {commentData.subject += 1
                if commentData.subject > commentGenerator.subjectPhrases.count-1{
                commentData.subject = 0
            }
        })
            Button("Effort: \(commentGenerator.effortPhrases[commentData.effort].capitalized)", action:
                    {commentData.effort += 1
                if commentData.effort > commentGenerator.effortPhrases.count-1{
                commentData.effort = 0
            }
        })
            Button("Understanding: \(commentGenerator.understandingPhrases[commentData.understanding].capitalized)", action:
                    {commentData.understanding += 1
                if commentData.understanding > commentGenerator.understandingPhrases.count-1{
                commentData.understanding = 0
            }
        })
            Button("Weakness: \(commentData.weakness)", action:
                    {commentData.weakness += 1
                if commentData.weakness > commentGenerator.weaknessPhrases.count-1{
                commentData.weakness = 0
            }
        })
             Text("\(commentGenerator.generateComment( data: commentData))")
                
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(commentData: CommentData(enjoyment: 0, effort: 0, subject: 0, understanding: 0, weakness: 0), commentGenerator:     CommentGenerator())
    }
}
