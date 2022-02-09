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
            Button("Enjoyment: \(commentData.enjoyment)", action: {commentData.enjoyment += 1
            if commentData.enjoyment > 4{
                commentData.enjoyment = 0
            }
        })
            Button("Subject: \(commentGenerator.subjectPhrases[commentData.subject])", action: {commentData.subject += 1
            if commentData.subject > 4{
                commentData.subject = 0
            }
        })
            Button("Effort: \(commentData.effort)", action:
                    {commentData.effort += 1
            if commentData.effort > 4{
                commentData.effort = 0
            }
        })
            Button("Understanding: \(commentData.understanding)", action:
                    {commentData.understanding += 1
            if commentData.understanding > 4{
                commentData.understanding = 0
            }
        })
            Button("Weakness: \(commentData.weakness)", action:
                    {commentData.weakness += 1
            if commentData.weakness > 4{
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
