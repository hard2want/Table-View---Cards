//
//  CardTVCell.swift
//  Table View - Cards
//
//  Created by The Duke on 3/18/19.
//  Copyright © 2019 The Duke. All rights reserved.
//

import UIKit

class CardTVCell: UITableViewCell {

    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet weak var cardTitleLabel: UILabel!
    
    func setCard(card: Card){
        cardImageView.image = card.image
        cardTitleLabel.text = card.title
    } // end setCard()
    
} // end CardTVCell
