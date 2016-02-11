//
//  RepoViewCell.swift
//  GithubDemo
//
//  Created by Hugo Nguyen on 2/10/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit
import AFNetworking

class RepoViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var forkLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    
    
    var repo: GithubRepo! {
        didSet {
            nameLabel.text = repo.name!
            ownerLabel.text = repo.ownerHandle!
            starLabel.text = "\(repo.stars!)"
            forkLabel.text = "\(repo.forks!)"
            descriptionLabel.text = repo.repoDescription!
            if let url = repo.ownerAvatarURL {
                if let nsUrl = NSURL(string: url) {
                    avatarImageView.setImageWithURL(nsUrl)
                }
            }
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
