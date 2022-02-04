//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Diab, Ahmed (HWTA) on 04/02/2022.
//

import SwiftUI
struct ContentView: View {
    @StateObject var commentData: CommentData
    var body: some View {
        VStack{
            Button("Enjoyment: \(commentData.enjoyment)", action: {commentData.enjoyment += 1
            if commentData.enjoyment > 4{
                commentData.enjoyment = 0
            }
        })
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(commentData: CommentData(enjoyment: 0, effort: 0, subject: 0, understanding: 0, weakness: 0))
    }
}
