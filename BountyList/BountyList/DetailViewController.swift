//
//  DetailViewController.swift
//  BountyList
//
//  Created by 이상봉 on 2021/11/08.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imgView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var bountyLabel: UILabel!
    
    var name: String?
    var bounty: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }
    
    func updateUI() {
        if let name = self.name, let bounty = self.bounty {
            let img = UIImage(named: "\(name).jpg")
            imgView.image = img
            nameLabel.text = name
            bountyLabel.text = "\(bounty)"
        }
        
    }

    @IBAction func closeBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
