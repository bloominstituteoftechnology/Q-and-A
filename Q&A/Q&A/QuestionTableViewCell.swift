//
//  QuestionTableViewCell.swift
//  Q&A
//
//  Created by Jocelyn Stuart on 1/15/19.
//  Copyright © 2019 JS. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let question = question else { return }
        
        questionLabel.text = question.question
        askerLabel.text = question.asker
        
        //what about answer and answerer or the bottom label??
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var askerLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    
    
}
