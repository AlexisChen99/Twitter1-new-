//
//  HomeTableViewController.swift
//  Twitter
//
//  Created by Alexis Chen on 2/13/20.
//  Copyright © 2020 Dan. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {

    //var changes; let does not change
    var tweetArray = [NSDictionary]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source
    
    //this func will load the info from tweet
    func loadTweet(){
        //TODO
        
        
        
        
        
    }
    
    
    //logout when the button is pressed
    @IBAction func onLogout(_ sender: Any) {
        TwitterAPICaller.client?.logout()
        self.dismiss(animated: true, completion: nil)
        UserDefaults.standard.set(false, forKey: "userLoggedIn")
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //the cell would be the tweetCelltableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "TweetCell", for: indexPath) as! TweetCellTableViewCell
        
        cell.userNamelabel.text = "Sup"
        cell.tweetContent.text = "hi there"
        
        return cell
    }
    
    //number of section
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    //number of rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

}
