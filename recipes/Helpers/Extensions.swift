//
//  Extensions.swift
//  recipes
//
//  Created by Aastha Sood on 03/05/2023.
//

import Foundation
import UIKit

extension Data {
    func makeJson() throws -> [String: Any] {
        do {
            let dictionary = try JSONSerialization.jsonObject(with: self, options: .allowFragments) as? [String: Any]
            return dictionary ?? [:]
        } catch {
            throw error
        }
    }
}

extension UITableView {
    func autoGrowTableViewHeader() {
        let headerView = self.tableHeaderView!
        
        headerView.setNeedsLayout()
        headerView.layoutIfNeeded()
        
        let height = headerView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize).height
        var frame = headerView.frame
        frame.size.height = height
        headerView.frame = frame
        
        self.tableHeaderView = headerView
    }
}

extension Bundle {
    func decode<T: Decodable>(_ type: T.Type, from file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }

        let decoder = JSONDecoder()

        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }

        return loaded
    }
}
