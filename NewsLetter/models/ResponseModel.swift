//
//  ResponseModel.dart.swift
//  NewsLetter
//
//  Created by halil yılmaz on 12.05.2022.
//

import Foundation

struct APIResponse : Codable {
    let articles : [Article]
}

struct Article : Codable {
    let source: Source
    let title: String
    let description : String?
    let url: String?
    let urlToImage : String?
    let publishedAt: String
}

struct Source: Codable {
    let name : String
}


