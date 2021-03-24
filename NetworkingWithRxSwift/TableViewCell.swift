//
//  TableViewCell.swift
//  NetworkingWithRxSwift
//
//  Created by Edmilson vieira da silva on 23/02/21.
//  Copyright © 2021 Edmilson vieira da silva. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

   /* override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    } */
  
  //adicionei esse doi metodoa abaixo
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
          super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
      }

      @available (*, unavailable)
      required init?(coder aDecoder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
      }

  }

