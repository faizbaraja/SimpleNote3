//
//  HomePageViewController.swift
//  SimpleNote3
//
//  Created by faiz baraja on 01/10/22.
//

import UIKit

class HomePageViewController: UIViewController {
    @IBOutlet var collectionNoteList: UICollectionView!
    let viewModel = HomePageViewModel()
    
    var dummyDatas:[NoteStructure] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "My Notes"
        registerCell()
        addRightButton()
        
        dummyDatas = viewModel.dummyNotesData()
        collectionNoteList.reloadData()
        // Do any additional setup after loading the view.
    }

    private func addRightButton() {
        let barButton = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(openAddNotes))
        self.navigationItem.rightBarButtonItem = barButton
    }
    
    @objc func openAddNotes() {
        
    }
    
    private func registerCell() {
        collectionNoteList.register(UINib(nibName: "NotesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "NotesCollectionViewCell")
    }
}

extension HomePageViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dummyDatas.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NotesCollectionViewCell", for: indexPath) as! NotesCollectionViewCell
        let currentNote = dummyDatas[indexPath.item]
        cell.configCell(cellData: currentNote)
        return cell
    }
}

extension HomePageViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.bounds.width - 20) / 2 - 5
        return CGSize(width: width, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
}
