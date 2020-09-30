//
//  CellDequeuable.swift
//  SWIFT4CollectionHeaderAndFooter
//
//  Created by Nir Leshem on 28/09/2020.
//  Copyright © 2020 Nir Leshem. All rights reserved.
//

import UIKit

public protocol CellDequeuable: CellIdentifiable {}

// MARK: UITableViewCell
public extension CellDequeuable where Self: UITableViewCell {
    static func dequeue(from tableView: UITableView) -> Self {
        return tableView.dequeueReusableCell(withIdentifier: identifier) as! Self
    }
}

// MARK: UITableViewHeaderFooterView
public extension CellDequeuable where Self: UITableViewHeaderFooterView {
    static func dequeue(from tableView: UITableView) -> Self {
        return tableView.dequeueReusableHeaderFooterView(withIdentifier: identifier) as! Self
    }
}

// MARK: UICollectionViewCell
public extension CellDequeuable where Self: UICollectionViewCell {
    static func dequeue(from collectionView: UICollectionView, for indexPath: IndexPath) -> Self {
        return collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! Self
    }
}

// MARK: UICollectionReusableView
public extension CellDequeuable where Self: UICollectionReusableView {
    static func dequeue(from collectionView: UICollectionView, for indexPath: IndexPath, as type: CollectionViewReusableViewType) -> Self {
        return collectionView.dequeueReusableSupplementaryView(ofKind: type.value, withReuseIdentifier: identifier, for: indexPath) as! Self
    }
}
