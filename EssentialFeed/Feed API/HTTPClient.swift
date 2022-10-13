//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Matheus Lima on 10/12/22.
//

import Foundation

public typealias HTTPClientResult = Result<(Data, HTTPURLResponse), Error>

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
