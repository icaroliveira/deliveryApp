//
//  Double+.swift
//  deliveryApp
//
//  Created by icaro on 24/08/23.
//

import Foundation

extension Double {
    func formatPrice() -> String{
        let formattedString = String(format: "%.2f", self)
        return formattedString.replacingOccurrences(of: ".", with: ",")
    }
}
