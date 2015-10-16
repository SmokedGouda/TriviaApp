//
//  ThirdQuestionViewController.swift
//  Trivia
//
//  Created by Craig Carlson on 10/15/15.
//  Copyright © 2015 Craig Carlson. All rights reserved.
//

import UIKit

class ThirdQuestionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let thirdSetOfAnswers = ThirdAnswer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return thirdSetOfAnswers.thirdArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell")
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        }
        cell!.textLabel?.text = thirdSetOfAnswers.thirdArray[indexPath.row]
        return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch indexPath.row {
        case 0:
            self.performSegueWithIdentifier("youWinSegue", sender: self)
        default:
            self.performSegueWithIdentifier("thirdIncorrectAnswerSegue", sender: self)
        }
    }
}
