//
//  CommentCardWriterApp.swift
//  CommentCardWriter
//
//  Created by Diab, Ahmed (HWTA) on 04/02/2022.
//

import SwiftUI

@main
struct CommentCardWriterApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(commentData: CommentData(enjoyment: 0, effort: 0, subject: 0, understanding: 0, weakness: 0))
        }
    }
}
