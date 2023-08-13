//
//  Result.swift
//  CRUD App
//
//  Created by João Paulo Pereira Silva on 12/08/23.
//

import Foundation

enum Result<Value, Error> {
    case success(Value)
    case failure(Error)
    case empty
}
