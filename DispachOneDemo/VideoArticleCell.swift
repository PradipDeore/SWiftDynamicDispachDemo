//
//  VideoArticleCell.swift
//  DispachOneDemo
//
//  Created by Pradip Deore on 18/06/24.
//

import UIKit

class VideoArticleCell: UITableViewCell {

    @IBOutlet var iconImageView: UIImageView!
    @IBOutlet var titleNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
  }
  class VideoArticle : Article {
    override func displayCell(in tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "VideoArticleCell", for: indexPath) as? VideoArticleCell
      cell?.titleNameLabel.text = self.name
      if let url = URL(string: self.descriptionString) {
      cell?.iconImageView.loadImage(from: url)
        }
      return cell ?? UITableViewCell()
    }
  }
