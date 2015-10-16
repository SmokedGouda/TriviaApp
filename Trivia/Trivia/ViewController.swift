//
//  ViewController.swift
//  Trivia
//
//  Created by Craig Carlson on 10/15/15.
//  Copyright © 2015 Craig Carlson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let firstSetOfAnswers = FirstAnswer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return firstSetOfAnswers.answerArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell")
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        }
        cell!.textLabel?.text = firstSetOfAnswers.answerArray[indexPath.row]
        return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch indexPath.row {
        case 2:
            self.performSegueWithIdentifier("secondQuestionSegue", sender: self)
        default:
            self.performSegueWithIdentifier("incorrectAnswerSegue", sender: self)
        }
    }
}
