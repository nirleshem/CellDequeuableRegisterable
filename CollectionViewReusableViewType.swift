//
//  CollectionViewReusableViewType.swift
//  SWIFT4CollectionHeaderAndFooter
//
//  Created by Nir Leshem on 28/09/2020.
//  Copyright © 2020 Nir Leshem. All rights reserved.
//

import UIKit

public enum CollectionViewReusableViewType {
    case header, footer
    
    internal var value: String {
        switch self {
        case .header: return UICollectionView.elementKindSectionHeader
        case .footer: return UICollectionView.elementKindSectionFooter
        }
    }
}
