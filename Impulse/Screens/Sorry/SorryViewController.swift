//
//  SorryViewController.swift
//  Impulse
//
//  Created by Gleb Shendrik on 19.10.2020.
//

import UIKit

class SorryViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descrLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = L10n.SorryScreen.title
        
        let attributedString: NSMutableAttributedString = NSMutableAttributedString(string: L10n.SorryScreen.body)
        attributedString.setColorForText(textForAttribute: "reinstall", withColor: descrLabel.textColor)
        
        descrLabel.attributedText = attributedString
    }
    
    @IBAction func onTapClose(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
