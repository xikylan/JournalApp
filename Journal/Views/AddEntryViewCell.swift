//
//  AddEntryViewCell.swift
//  Journal
//
//  Created by Lan Nguyen on 5/9/20.
//  Copyright © 2020 Lan Nguyen. All rights reserved.
//

import UIKit

class AddEntryViewCell: UICollectionViewCell {

    var editIcon: UIImageView!
    var editText: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)

        let editIcon = UIImageView(frame: .zero)
        editIcon.image = UIImage(named: "pencil")
        editIcon.heightAnchor.constraint(equalToConstant: 30.0).isActive = true
        editIcon.widthAnchor.constraint(equalToConstant: 30.0).isActive = true
        editIcon.tintColor = UIColor(red: 80/255, green: 80/255, blue: 80/255, alpha: 1)

        self.editIcon = editIcon

        let editText = UILabel(frame: .zero)
        editText.text = "New entry +"
        editText.textColor = UIColor(red: 157/255, green: 157/255, blue: 157/255, alpha: 1)
        editText.font = UIFont.systemFont(ofSize: 12.0, weight: .bold)

        self.editText = editText

        //Stack View
        let stackView = UIStackView()
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.distribution = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.center
        stackView.spacing = 10.0

        stackView.addArrangedSubview(editIcon)
        stackView.addArrangedSubview(editText)
        stackView.translatesAutoresizingMaskIntoConstraints = false

        self.contentView.addSubview(stackView)

        stackView.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true

    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        fatalError("init(coder:) has not been implemented")
    }

    override func awakeFromNib() {
        super.awakeFromNib()

        fatalError("init(coder:) has not been implemented")
    }
}
