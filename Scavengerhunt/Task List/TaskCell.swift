//
//  TaskCell.swift
//  Scavengerhunt
//
//  Created by SHANK on 3/20/23.
//

import UIKit

class TaskCell: UITableViewCell {
    
    
 
    @IBOutlet weak var CompletedImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    func configure(with task: Task) {
        titleLabel.text = task.title
        titleLabel.textColor = task.isComplete ? .secondaryLabel : .label
        CompletedImageView.image = UIImage(systemName: task.isComplete ? "circle.inset.filled" : "circle")?.withRenderingMode(.alwaysTemplate)
        CompletedImageView.tintColor = task.isComplete ? .systemBlue : .tertiaryLabel
    }


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
