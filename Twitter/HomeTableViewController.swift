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
    var numberOfTweet: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source
    
    //this func will load the info from tweet
    func loadTweet(){
        //variable
        let myURL = "https://api.twitter.com/1.1/statuses/home_timeline.json"
        let myParams = ["count": 10]
        
        //pull the dictionary from the url
        TwitterAPICaller.client?.getDictionariesRequest(url: myURL, parameters: myParams, success: { (tweets: [NSDictionary]) in
            
            //clean the array before append to it
            self.tweetArray.removeAll()
        
            //is this a for each loop?
            for tweet in tweets {
                self.tweetArray.append(tweet)
            }
        }, failure: { (Error) in
            print("could not retreive tweets")
        })
        
        
        
        
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
