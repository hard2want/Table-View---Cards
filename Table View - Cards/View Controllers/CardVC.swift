//
//  CardVC.swift
//  Table View - Cards
//
//  Created by The Duke on 3/18/19.
//  Copyright © 2019 The Duke. All rights reserved.
//

import UIKit

class CardVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    let suits = ["Hearts", "Spades", "Diamonds", "Clubs"]
    let fullDeck = [
        [
            Card(image: UIImage(named: "Ah")!, title: "Ace of Hearts"),
            Card(image: UIImage(named: "2h")!, title: "Two of Hearts"),
            Card(image: UIImage(named: "3h")!, title: "Three of Hearts"),
            Card(image: UIImage(named: "4h")!, title: "Four of Hearts"),
            Card(image: UIImage(named: "5h")!, title: "Five of Hearts"),
            Card(image: UIImage(named: "6h")!, title: "Six of Hearts"),
            Card(image: UIImage(named: "7h")!, title: "Seven of Hearts"),
            Card(image: UIImage(named: "8h")!, title: "Eight of Hearts"),
            Card(image: UIImage(named: "9h")!, title: "Nine of Hearts"),
            Card(image: UIImage(named: "10h")!, title: "Ten of Hearts"),
            Card(image: UIImage(named: "Jh")!, title: "Jack of Hearts"),
            Card(image: UIImage(named: "Qh")!, title: "Queen of Hearts"),
            Card(image: UIImage(named: "Kh")!, title: "King of Hearts")
        ],
        [
            Card(image: UIImage(named: "As")!, title: "Ace of Spades"),
            Card(image: UIImage(named: "2s")!, title: "Two of Spades"),
            Card(image: UIImage(named: "3s")!, title: "Three of Spades"),
            Card(image: UIImage(named: "4s")!, title: "Four of Spades"),
            Card(image: UIImage(named: "5s")!, title: "Five of Spades"),
            Card(image: UIImage(named: "6s")!, title: "Six of Spades"),
            Card(image: UIImage(named: "7s")!, title: "Seven of Spades"),
            Card(image: UIImage(named: "8s")!, title: "Eight of Spades"),
            Card(image: UIImage(named: "9s")!, title: "Nine of Spades"),
            Card(image: UIImage(named: "10s")!, title: "Ten of Spades"),
            Card(image: UIImage(named: "Js")!, title: "Jack of Spades"),
            Card(image: UIImage(named: "Qs")!, title: "Queen of Spades"),
            Card(image: UIImage(named: "Ks")!, title: "King of Spades")
        ],
        [
            Card(image: UIImage(named: "Ad")!, title: "Ace of Diamonds"),
            Card(image: UIImage(named: "2d")!, title: "Two of Diamonds"),
            Card(image: UIImage(named: "3d")!, title: "Three of Diamonds"),
            Card(image: UIImage(named: "4d")!, title: "Four of Diamonds"),
            Card(image: UIImage(named: "5d")!, title: "Five of Diamonds"),
            Card(image: UIImage(named: "6d")!, title: "Six of Diamonds"),
            Card(image: UIImage(named: "7d")!, title: "Seven of Diamonds"),
            Card(image: UIImage(named: "8d")!, title: "Eight of Diamonds"),
            Card(image: UIImage(named: "9d")!, title: "Nine of Diamonds"),
            Card(image: UIImage(named: "10d")!, title: "Ten of Diamonds"),
            Card(image: UIImage(named: "Jd")!, title: "Jack of Diamonds"),
            Card(image: UIImage(named: "Qd")!, title: "Queen of Diamonds"),
            Card(image: UIImage(named: "Kd")!, title: "King of Diamonds")
        ],
        [
            Card(image: UIImage(named: "Ac")!, title: "Ace of Clubs"),
            Card(image: UIImage(named: "2c")!, title: "Two of Clubs"),
            Card(image: UIImage(named: "3c")!, title: "Three of Clubs"),
            Card(image: UIImage(named: "4c")!, title: "Four of Clubs"),
            Card(image: UIImage(named: "5c")!, title: "Five of Clubs"),
            Card(image: UIImage(named: "6c")!, title: "Six of Clubs"),
            Card(image: UIImage(named: "7c")!, title: "Seven of Clubs"),
            Card(image: UIImage(named: "8c")!, title: "Eight of Clubs"),
            Card(image: UIImage(named: "9c")!, title: "Nine of Clubs"),
            Card(image: UIImage(named: "10c")!, title: "Ten of Clubs"),
            Card(image: UIImage(named: "Jc")!, title: "Jack of Clubs"),
            Card(image: UIImage(named: "Qc")!, title: "Queen of Clubs"),
            Card(image: UIImage(named: "Kc")!, title: "King of Clubs")
        ]] // end fullDeck [[]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    } // end viewDidLoad()
    
} // end CardVC

extension CardVC: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return suits.count
    } // end numberOfSections()
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return suits[section]
    } // end titleForHeaderInSection
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fullDeck[section].count
    } // end numberOfRowsInSection
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cardCell") as! CardTVCell
        let card = fullDeck[indexPath.section][indexPath.row]
        cell.setCard(card: card)
        return cell
    } // end cellForRowAt indexPath
    
} // extension CardVC:
