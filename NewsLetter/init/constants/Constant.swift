//
//  Constant.swift
//  NewsLetter
//
//  Created by halil yılmaz on 12.05.2022.
//

import Foundation

enum Constant {
    static let baseURL = ""
    static let country = ""
    static let apiKey = ""
    static var endPoint: String {
        Self.baseURL + "?country=" + Self.country + "&apiKey=" + Self.apiKey
    }
}

struct Constants {
    static let baseUrl = "https://newsapi.org"
    static let apiKey = "1dfa335785a740b4b705027996f8101d"
    static let topHeadLinesUrl = URL(string: "\(baseUrl)/v2/everything?q=tesla&from=2022-04-12&sortBy=publishedAt&apiKey=\(apiKey)")
    static let searchUrlString = "\(baseUrl)/v2/everything?from=2022-04-12&sortBy=publishedAt&apiKey=\(apiKey)&q="
}
