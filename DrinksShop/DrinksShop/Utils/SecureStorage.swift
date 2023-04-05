//
//  SecureStorage.swift
//  DrinksShop
//
//  Created by kekeli on 29/03/2023.
//

import Foundation
import KeychainAccess

let userKey = "UserSecureKey"

final class SecureStorage {
    
    private static let keychain = Keychain (service: "com.keli.DrinksShop")
    
    func save (data: Data, with key: String) async{
        SecureStorage.keychain[ data: key] = data 
    }
    func get (with key: String) async -> Data? {
        SecureStorage .keychain[ data: key]
    }
    func delete (with key: String) async {
        SecureStorage.keychain[key] = nil
    }
}
