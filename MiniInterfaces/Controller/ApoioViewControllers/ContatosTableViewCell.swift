//
//  ContatosTableViewCell.swift
//  MiniInterfaces
//
//  Created by Helaine Pontes on 29/04/20.
//  Copyright © 2020 Elias Ferreira. All rights reserved.
//

import UIKit

class ContatoTableViewCell: UITableViewCell {

// Elementos da cell
    @IBOutlet weak var backgView: UIView!
    @IBOutlet weak var spaceBackView: UIView!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var familyLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var callButton: UIButton!
//----------------------------------------------------------------
    
    static let xibName = "ContatoXibs" // Setando o nome da xib
    static let identifier = "contatoCell" // Setando o identificador da cell
    
    func configCell(with contact: Contacts){ //Funçao para configurar os elementos da ceel, que no caso eu puxo da classe de contatos.
        photoImageView.image = UIImage(named: contact.photo)
        familyLabel.text = contact.parents
        nameLabel.text = contact.name
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        spaceBackView.backgroundColor = .backgroundColor
        familyLabel.font = sfRounded(size: 14, weight: .medium)
        nameLabel.font = sfRounded(size: 18, weight: .medium)
        nameLabel.textColor = .textColor
        messageButton.imageView?.tintColor = .primaryColor
        callButton.imageView?.tintColor = .primaryColor
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        photoImageView.layer.cornerRadius = photoImageView.frame.size.width / 2
    }
}
