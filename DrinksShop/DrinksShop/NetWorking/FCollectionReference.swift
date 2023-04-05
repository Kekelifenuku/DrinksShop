//
//  FCollectionReference.swift
//  DrinksShop
//
//  Created by kekeli on 03/04/2023.
//


import Firebase
import FirebaseFirestoreSwift
import FirebaseFirestore

enum FCollectionReference: String {
    case Orders, Drinks
}

func FirebaseReference(_ collectionReference: FCollectionReference) -> CollectionReference {
    Firestore.firestore().collection (collectionReference.rawValue)
}
