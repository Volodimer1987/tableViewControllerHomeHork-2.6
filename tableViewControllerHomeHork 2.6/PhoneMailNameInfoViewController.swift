//
//  PhoneMailNameInfoViewController.swift
//  tableViewControllerHomeHork 2.6
//
//  Created by vladimir gennadievich on 27.08.2020.
//  Copyright © 2020 Vladimir Gennadievich. All rights reserved.
//

import UIKit

class PhoneMailNameInfoViewController: UIViewController {

    @IBOutlet var NameSernameBigLabel: UILabel!
    @IBOutlet var mailLabel: UILabel!
    @IBOutlet var phoneNumber: UILabel!
    
    var nameSername:String!
    var mail:String!
    var phoneNumberFromOtherVC:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NameSernameBigLabel.text = nameSername
        mailLabel.text = mail
        phoneNumber.text = phoneNumberFromOtherVC
    }
    

}
