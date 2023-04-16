//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Matheus Lima on 4/13/23.
//

import EssentialFeed

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool

    var hasLocation: Bool {
        return location != nil
    }
}
