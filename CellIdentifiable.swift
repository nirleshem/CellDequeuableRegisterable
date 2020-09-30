//
//  CellIdentifiable.swift
//  SWIFT4CollectionHeaderAndFooter
//
//  Created by Nir Leshem on 28/09/2020.
//  Copyright © 2020 Nir Leshem. All rights reserved.
//

import UIKit

public protocol CellIdentifiable {
    static var identifier: String { get }
}

// MARK: Defaults
public extension CellIdentifiable {
    static var identifier: String {
        return String(describing: Self.self)
    }
}
