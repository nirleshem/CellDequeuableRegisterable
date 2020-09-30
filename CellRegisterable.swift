//
//  CellRegisterable.swift
//  SWIFT4CollectionHeaderAndFooter
//
//  Created by Nir Leshem on 28/09/2020.
//  Copyright © 2020 Nir Leshem. All rights reserved.
//

import UIKit

public protocol CellRegisterable: CellIdentifiable {
    static var nib: UINib { get }
}

// MARK: Defaults
public extension CellRegisterable {
    static var nib: UINib {
        return UINib(nibName: String(describing: Self.self), bundle: nil)
    }
}

// MARK: UITableViewCell
public extension CellRegisterable where Self: UITableViewCell {
    static func register(in tableView: UITableView) {
        tableView.register(nib, forCellReuseIdentifier: identifier)
    }
}

// MARK: UITableViewHeaderFooterView
public extension CellRegisterable where Self: UITableViewHeaderFooterView {
    static func register(in tableView: UITableView) {
        tableView.register(nib, forHeaderFooterViewReuseIdentifier: identifier)
    }
}

// MARK: UICollectionViewCell
public extension CellRegisterable where Self: UICollectionViewCell {
    static func register(in collectionView: UICollectionView) {
        collectionView.register(nib, forCellWithReuseIdentifier: identifier)
    }
}

// MARK: UICollectionReusableView
public extension CellRegisterable where Self: UICollectionReusableView {
    static func register(in collectionView: UICollectionView, as type: CollectionViewReusableViewType) {
        collectionView.register(nib, forSupplementaryViewOfKind: type.value, withReuseIdentifier: identifier)
    }
}
