//
//  SecondQuestionViewController.swift
//  Trivia
//
//  Created by Craig Carlson on 10/15/15.
//  Copyright © 2015 Craig Carlson. All rights reserved.
//

import UIKit

class SecondQuestionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let secondSetOfAnswers = SecondAnswer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return secondSetOfAnswers.secondArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell")
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        }
        cell!.textLabel?.text = secondSetOfAnswers.secondArray[indexPath.row]
        return cell!
        }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch indexPath.row {
        case 1:
            self.performSegueWithIdentifier("thirdQuestionSegue", sender: self)
        default:
            self.performSegueWithIdentifier("secondIncorrectAnswerSegue", sender: self)
        }
    }
}
