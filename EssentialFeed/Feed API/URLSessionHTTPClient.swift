//
//  URLSessionHTTPClient.swift
//  EssentialFeed
//
//  Created by Matheus Lima on 10/16/22.
//

import Foundation

public final class URLSessionHTTPClient {
    private let session: URLSession

    public init(session: URLSession = .shared) {
        self.session = session
    }

    public func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void) {
        session.dataTask(with: url) { _, _, error in
            if let error = error {
                completion(.failure(error))
            }
        }.resume()
    }
}
