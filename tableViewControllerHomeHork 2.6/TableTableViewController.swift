//
//  TableTableViewController.swift
//  tableViewControllerHomeHork 2.6
//
//  Created by vladimir gennadievich on 26.08.2020.
//  Copyright © 2020 Vladimir Gennadievich. All rights reserved.
//

import UIKit

class TableTableViewController: UITableViewController {
    
    var persons = Person.randomNameSernameArray()


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "manInfo", for: indexPath)
        cell.textLabel?.text = "\(persons[indexPath.row].name) \(persons[indexPath.row].sername)"
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let phoneMailPersonVc = segue.destination as! PhoneMailNameInfoViewController
            phoneMailPersonVc.nameSername = "\(persons[indexPath.row].name) \((persons[indexPath.row].sername))"
            phoneMailPersonVc.phoneNumberFromOtherVC = "\(persons[indexPath.row].phoneNumber)"
            phoneMailPersonVc.mail = "\(persons[indexPath.row].mail)"
        }
    }

}
