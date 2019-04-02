//
//  DetailViewController.swift
//  Day23-project1-3
//
//  Created by 李沐軒 on 2019/3/6.
//  Copyright © 2019 李沐軒. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var detailLabel: UILabel!
    @IBOutlet var detailImage: UIImageView!
    
    
    var countriesImage: String?
    var countriesLabel: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItem  = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(tapped))
    
        detailImage.layer.borderWidth = 2
        detailImage.layer.borderColor = UIColor.lightGray.cgColor
        
        if let countriesImage = countriesImage, let countriesLabel = countriesLabel {
            detailImage.image = UIImage(named: countriesImage)
            detailLabel.text = countriesLabel.uppercased()
        }
        
    }
    
    @objc func tapped() {
    
        guard let image = detailImage.image?.pngData() else {
            print("No image found.")
            return
        }
        
        let vc = UIActivityViewController(activityItems: [image], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true, completion: nil)
    }

    

}
