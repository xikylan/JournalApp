//
//  JournalEntryViewCell.swift
//  Journal
//
//  Created by Lan Nguyen on 5/8/20.
//  Copyright © 2020 Lan Nguyen. All rights reserved.
//

import UIKit

class JournalEntryViewCell: UICollectionViewCell {

    var dateLabel: UILabel!
    var timeLabel: UILabel!
    var textView: UITextView!

    override init(frame: CGRect) {
        super.init(frame: frame)

        let dateLabel = UILabel(frame: .zero)
        dateLabel.text = "April 13"
        dateLabel.textColor = UIColor(red: 87/255, green: 87/255, blue: 87/255, alpha: 1)
        dateLabel.font = UIFont.systemFont(ofSize: 18.0, weight: .bold)
//        dateLabel.backgroundColor = .blue
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(dateLabel)

        NSLayoutConstraint.activate([
            dateLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10.0),
//            dateLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -180.0),
            dateLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10.0),
//            dateLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -10.0)
        ])

        self.dateLabel = dateLabel

        let timeLabel = UILabel(frame: .zero)
        timeLabel.text = "12:03 pm"
        timeLabel.font = UIFont.systemFont(ofSize: 10.0, weight: .light)
        timeLabel.textColor = UIColor(red: 157/255, green: 157/255, blue: 157/255, alpha: 1)
        //timeLabel.backgroundColor = .red
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(timeLabel)

        NSLayoutConstraint.activate([
            timeLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 40.0),
            //timeLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -160.0),
            timeLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10.0),
            //timeLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -10.0)
        ])

        self.timeLabel = timeLabel

        let textView = UITextView(frame: .zero)
        textView.textContainerInset = .zero
        textView.isEditable = false
        textView.isSelectable = false
        textView.isScrollEnabled = false
        textView.text = "It really isn't the best thing to vent out loud like this, but I just want to get this off my chest "
        textView.textColor = UIColor(red: 157/255, green: 157/255, blue: 157/255, alpha: 1)
        textView.font = UIFont.systemFont(ofSize: 14.0, weight: .medium)
        //textView.backgroundColor = .green
        textView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(textView)

        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 90.0),
            textView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -10.0),
            textView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 6.0),
            textView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -6.0)
        ])

        self.textView = textView
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        fatalError("Interface Builder is not supported!")
    }

    override func awakeFromNib() {
        super.awakeFromNib()

        fatalError("Interface Builder is not supported!")
    }
    
}
