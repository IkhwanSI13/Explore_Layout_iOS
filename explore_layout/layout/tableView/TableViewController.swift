//
//  TableViewController.swift
//  explore_layout
//
//  Created by cartenz on 09/09/20.
//  Copyright © 2020 yukngoding. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    let cardCell = "MyCardCell"
    let cardTypeTwoCell = "MyCardTwoCell"

    var cardArray: [String] = ["Yovi", "Ilga", "Ahmad", "Budi"]
    var colorArray: [UIColor] = [.black, .blue,.black, .blue]
    var cardTypeTwoArray: [String] = ["Budi", "Giga", "Mantap"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
    }

        private func setupTableView() {
            myTableView.delegate = self
            myTableView.dataSource = self
            myTableView.register(UINib(nibName: cardCell, bundle: nil), forCellReuseIdentifier: cardCell)
            myTableView.register(UINib(nibName: cardTypeTwoCell, bundle: nil), forCellReuseIdentifier: cardTypeTwoCell)
            myTableView.bounces = false
            myTableView.tableFooterView = UIView()
        }
    }

    extension TableViewController: UITableViewDelegate, UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            if section == 0 {
                return cardArray.count
            } else if section == 1 {
                return cardTypeTwoArray.count
            }
            return 0
        }

        func numberOfSections(in tableView: UITableView) -> Int {
            return 2
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

            if indexPath.section == 0 {
                if let cell = tableView.dequeueReusableCell(withIdentifier: cardCell, for: indexPath) as? MyCardCell {

                    cell.myLabel.text = cardArray[indexPath.row]
                    cell.myImageView.layer.cornerRadius = cell.myImageView.frame.size.width / 2
                    cell.myImageView.backgroundColor = colorArray[indexPath.row]
                    cell.selectionStyle = .none

                    return cell
                }
            } else if indexPath.section == 1 {
                if let cell = tableView.dequeueReusableCell(withIdentifier: cardTypeTwoCell, for: indexPath) as? MyCardTwoCell {

                    cell.myLabel.text = cardTypeTwoArray[indexPath.row]

                    return cell
                }
            }

            return UITableViewCell()
        }

        func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let view = UIView()
            view.backgroundColor = .systemTeal

            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Section \(section + 1)"
            label.textColor = .black
            view.addSubview(label)

            label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true

            return view
        }

        func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return 40
        }

        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }

        func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
    }

