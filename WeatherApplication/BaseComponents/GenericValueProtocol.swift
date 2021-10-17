//
//  GenericValueProtocol.swift
//  WeatherApplication
//
//  Created by ezgi on 16.10.2021.
//

import Foundation

protocol GenericValueProtocol {
    associatedtype Value
    var value: Value { get }
}
