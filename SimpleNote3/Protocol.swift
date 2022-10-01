//
//  Protocol.swift
//  SimpleNote3
//
//  Created by faiz baraja on 01/10/22.
//

import UIKit

protocol ObjectSavable {
    func setObject<Object>(_ object: Object, forKey: String) throws where Object: Encodable
    func getObject<Object>(forKey: String, castTo type: Object.Type) throws -> Object where Object: Decodable
}
