//
//  Model.swift
//  Complete_Learning_App
//
//  Created by cloud_vfx on 12/08/21.
//

import Foundation

struct Model: Decodable , Identifiable {
    
    var id: Int
    var category: Int
    var content: Content
    var test: Test
}

struct Content: Decodable , Identifiable{
    
    var id: Int
    var image: String
    var time: String
    var description: String
    var lessons: [Lesson]
}

struct Lesson: Decodable, Identifiable {
    
    var id : Int
    var title: String
    var video: String
    var duration: String
    var explanation: String
}

struct Test: Decodable, Identifiable {
    
    var id: Int
    var image: String
    var time: String
    var description: String
    var questions: [Question]
}

struct Question: Decodable, Identifiable {
    
    var id: Int
    var content: String
    var correctIndex: Int
    var answers: [String]
}
