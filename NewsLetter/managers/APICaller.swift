//
//  APICaller.swift
//  NewsLetter
//
//  Created by halil yılmaz on 12.05.2022.
//

import Foundation

final class APICaller{
    // singleton sınıf kullanıldı
    static let shared = APICaller()
    
    private init() {}
    
    public func getTopStories(completion: @escaping (Result<[Article],Error>)-> Void){
        guard let url = Constants.topHeadLinesUrl else {return}
        
        let task = URLSession.shared.dataTask(with: url){data,_,error in
            if let error = error {
                completion(.failure(error))
            }
            else if let data = data {
                do{
                    let result = try JSONDecoder().decode(APIResponse.self,from:data)
                    completion(.success(result.articles))
                }catch{
                    completion(.failure(error))
                }
            }
        }
        task.resume()
    }
    
    
    public func search(with query: String, completion: @escaping (Result<[Article],Error>)-> Void){
        guard !query.trimmingCharacters(in: .whitespaces).isEmpty else {
            return
        }
        
        let urlString = Constants.searchUrlString + query
        guard let url = URL(string: urlString) else {return}
        
        let task = URLSession.shared.dataTask(with: url){data,_,error in
            if let error = error {
                completion(.failure(error))
            }
            else if let data = data {
                do{
                    let result = try JSONDecoder().decode(APIResponse.self,from:data)
                    completion(.success(result.articles))
                }catch{
                    completion(.failure(error))
                }
            }
        }
        task.resume()
    }
}



