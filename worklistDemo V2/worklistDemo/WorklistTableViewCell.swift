//
//  WorklistTableViewCell.swift
//  worklistDemo
//
//  Created by Ross Higgins on 6/14/17.
//  Copyright © 2017 Ross Higgins. All rights reserved.
//

import UIKit

class WorklistTableViewCell: UITableViewCell {

    @IBOutlet weak var accessionNo1: UILabel!
    @IBOutlet weak var exam1: UILabel!
    @IBOutlet weak var examDate1: UILabel!
    @IBOutlet weak var imgView1: UIImageView!
    
    @IBOutlet weak var accessionNo2: UILabel!
    @IBOutlet weak var examDate2: UILabel!
    @IBOutlet weak var exam2: UILabel!
    @IBOutlet weak var imgView2: UIImageView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
