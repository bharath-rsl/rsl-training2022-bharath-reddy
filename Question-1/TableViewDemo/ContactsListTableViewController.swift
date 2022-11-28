//
//  ContactsListTableViewController.swift
//  TableViewDemo
//
//  Created by Bharath Reddy on 25/11/22.
//

import UIKit

class ContactsListTableViewController: UITableViewController {
    var itemStore:ItemStore!;
    
    override func viewDidLoad() {
        
        print("##viewdid load");
        super.viewDidLoad()

    }

    @IBAction func addButtonTapped(_ sender: Any) {
        let newItem = itemStore.createItem()
         // Figure out where that item is in the array
         if let index = itemStore.allItems.firstIndex(of: newItem) {
         let indexPath = IndexPath(row: index, section: 0)
         // Insert this new row into the table
         tableView.insertRows(at: [indexPath], with: .automatic)
         }
    }
    @IBAction func editButtonTapped(_ sender: UIButton) {
        if(isEditing){
            sender.setTitle("Edit",for:.normal);
            setEditing(false, animated: true);
        }
        else{
            sender.setTitle("Done", for:.normal)
            setEditing(true, animated:true)
        }
        
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        print("sections");
        return 1;
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print("no of rows")
        return itemStore.allItems.count;
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)

        // Configure the cell...
        let item=itemStore.allItems[indexPath.row];
        cell.textLabel?.text=item.itemName;
        cell.detailTextLabel?.text = "\(item.itemCount)";
        print("fetching cell")

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
