//
//  HomePageViewModel.swift
//  SimpleNote3
//
//  Created by faiz baraja on 01/10/22.
//

import UIKit

class HomePageViewModel: NSObject {
    func dummyNotesData() -> [NoteStructure] {
        var dummyDatas:[NoteStructure] = []
        let dummyNote1 = NoteStructure(noteTitle: "Faiz", noteCategory: "General", noteDescription: "Dummy1")
        let dummyNote2 = NoteStructure(noteTitle: "Umar", noteCategory: "General", noteDescription: "Dummy2")
        let dummyNote3 = NoteStructure(noteTitle: "Ahmad", noteCategory: "General", noteDescription: "Dummy3")
        let dummyNote4 = NoteStructure(noteTitle: "Baraja", noteCategory: "Web Programming", noteDescription: "Dummy4")
        dummyDatas.append(dummyNote1)
        dummyDatas.append(dummyNote2)
        dummyDatas.append(dummyNote3)
        dummyDatas.append(dummyNote4)
        
        return dummyDatas
    }
}
