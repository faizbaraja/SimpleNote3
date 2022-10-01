//
//  DataAccess.swift
//  SimpleNote3
//
//  Created by faiz baraja on 01/10/22.
//

import UIKit

class DataAccess: NSObject {
    static func getNote() -> [NoteStructure] {
        let userDefaults = UserDefaults.standard
        do {
            let myNotes = try userDefaults.getObject(forKey: "MyNotesList", castTo: [NoteStructure].self)
            print(myNotes)
            return myNotes
        } catch {
            print(error.localizedDescription)
            return []
        }
    }
}
