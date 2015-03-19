//
//  DidYouKnowViewController.swift
//  CofficionadoTabbed
//
//  Created by Shahrukh on 19/03/15.
//  Copyright (c) 2015 VentureScience. All rights reserved.
//

import UIKit

class DidYouKnowViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var didYouKnowTable: UITableView!
    
    
    var dataArray = [
        "Coffee Brewing Methods",
        "Coffee Knowledge",
        "How Coffee Changed America"
    ];
    
    var selectedRow = "";



    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        // SET BACKGROUND
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg1")!);

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     // MARK: - UITableview Delegate
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count;
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->
        UITableViewCell {
            var cell = UITableViewCell();
            let text = dataArray[indexPath.row];
           
            cell.textLabel?.text = text;
            cell.textLabel?.font = UIFont (name: "Gill Sans", size: 20)
            cell.textLabel?.textColor = UIColor.whiteColor();
            cell.backgroundColor = UIColor.clearColor()
            
            return cell;
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        selectedRow = dataArray[indexPath.row];
        //self.performSegueWithIdentifier("StyleViewController", sender:self)
        return;
    }

    

    @IBAction func revieeButtonAction(sender: AnyObject) {
    }
    
    @IBAction func shareButtonAction(sender: AnyObject) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
