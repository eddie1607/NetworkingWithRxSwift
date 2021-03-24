//
//  APIClient.swift
//  NetworkingWithRxSwift
//
//  Created by Edmilson vieira da silva on 23/02/21.
//  Copyright © 2021 Edmilson vieira da silva. All rights reserved.
//

import Foundation
import RxSwift
class APIClient {
    private let baseURL = URL(string: "http://universities.hipolabs.com/")!

    func send<T: Codable>(apiRequest: APIRequest) -> Observable<T> {
        return Observable<T>.create { [unowned self] observer in
          let request = apiRequest.request(with: self.baseURL)
            let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
                do {
                    let model: T = try JSONDecoder().decode(T.self, from: data ?? Data())
                    observer.onNext(model)
                } catch let error {
                    observer.onError(error)
                }
                observer.onCompleted()
            }
            task.resume()
            
            return Disposables.create {
                task.cancel()
            }
        }
    }
}

