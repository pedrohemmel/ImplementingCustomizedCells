//
//  CustomTableViewCell.swift
//  ImplementingCustomizedCells
//
//  Created by Pedro Henrique Dias Hemmel de Oliveira Souza on 13/04/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var lblComida: UILabel!
    @IBOutlet weak var imgComida: UIImageView!
    @IBOutlet weak var comidaView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
