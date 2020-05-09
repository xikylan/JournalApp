//
//  AddEntryVC.swift
//  Journal
//
//  Created by Lan Nguyen on 5/9/20.
//  Copyright © 2020 Lan Nguyen. All rights reserved.
//

import UIKit

class AddEntryVC: UIViewController {

    var mainTextField: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white

        let title = UILabel(frame: CGRect(x: 80, y: 10, width: self.view.bounds.width - 160, height: 40))
        title.text = "New Entry"
        title.textColor = .black
        title.textAlignment = .center
        title.font = UIFont.systemFont(ofSize: 14, weight: .bold)

        self.view.addSubview(title)

        let journalTitle = UITextField(frame: CGRect(x: 0, y: 50, width: self.view.bounds.width, height: 50))
        journalTitle.backgroundColor = .green
        journalTitle.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        journalTitle.text = "Add title..."
        journalTitle.textColor = .gray

        self.view.addSubview(journalTitle)

        let textView = UITextView(frame: CGRect(x: 0, y: 100, width: self.view.bounds.width, height: 50))
        textView.backgroundColor = .blue
        textView.font = UIFont.systemFont(ofSize: 20, weight: .bold)


        self.view.addSubview(textView)

//        NSLayoutConstraint.activate([
//            textField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 10.0),
//            textField.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -10.0),
//            textField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10.0),
//            textField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10.0)
//        ])

    }

    func textFieldDidBeginEditing(_ textField: UITextField){
        if textField.textColor == UIColor.lightGray {
            textField.text = nil
            textField.textColor = UIColor.black
        }
    }

//    func textViewDidBeginEditing(textView: UITextView) {
//        if textView.textColor == UIColor.lightGray {
//            textView.text = nil
//            textView.textColor = UIColor.black
//        }
//    }
//

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
