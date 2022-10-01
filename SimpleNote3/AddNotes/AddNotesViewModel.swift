//
//  AddNotesViewModel.swift
//  SimpleNote3
//
//  Created by faiz baraja on 01/10/22.
//

import UIKit

class AddNotesViewModel: NSObject {

    func saveNote(noteTitle: String?, noteCategory: String?, noteDescription: String?, completion: () -> ()) {
        var currentNotes = getNote()
        let noteObject = NoteStructure(noteTitle: noteTitle,
                                       noteCategory: noteCategory,
                                       noteDescription: noteDescription)
        currentNotes.append(noteObject)
        let userDefaults = UserDefaults.standard
        do {
            try userDefaults.setObject(currentNotes, forKey: "MyNotesList")
            completion()
        } catch {
            print(error.localizedDescription)
            completion()
        }
    }
    
    func getNote() -> [NoteStructure] {
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
