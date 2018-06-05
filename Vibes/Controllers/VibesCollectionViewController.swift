//
//  VibesCollectionViewController.swift
//  Vibes
//
//  Created by Mark Bentivegna on 6/4/18.
//  Copyright © 2018 Mark Bentivegna. All rights reserved.
//

import UIKit

class VibesCollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
 
    @IBOutlet weak var vibesCollectionView: UICollectionView!
    
    let reuseIdentifier = "vibesCollectionViewCell" // also enter this string as the cell identifier in the storyboard
    var items = ["lit", "fratty", "chill", "cheap", "beer games", "happy hour", "outside space", "bougie", "beer", "happy"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("return 1")
        return self.items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("return cell")
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "vibesCollectionViewCell", for: indexPath) as! VibesCollectionCustomCell
        
        cell.vibeLabel.text = self.items[indexPath.item]
        
        
        return cell
        
        
    }
    
}
