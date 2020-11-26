//
//  protocols.swift
//  Delegate 2
//
//  Created by Hovo on 6/8/20.
//  Copyright © 2020 Hovo. All rights reserved.
//

import Foundation
@objc protocol DidSelectButtonDelegate: class {
    @objc optional func didSelectButtons (with row: Int)
}
