//
//  WorklistTableViewController.swift
//  worklistDemo
//
//  Created by Ross Higgins on 6/14/17.
//  Copyright © 2017 Ross Higgins. All rights reserved.
//

import UIKit

class WorklistTableViewController: UITableViewController {

    var list = [Worklist]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadSampleWorklist()
        
    }
    
    private func loadSampleWorklist() {
        
        let photo1 = UIImage(named: "study1img")
        let photo2 = UIImage(named: "study2img")
        
        guard let study1 = Worklist(accessionNo: "49985484", examDate: "5/29/17", exam: "Chst Abd Aorta, Chst Angio", photo: photo1!) else { fatalError("cannot instantiate study1") }
        
        guard let study2 = Worklist(accessionNo: "4977619", examDate: "4/30/17", exam: "Abd Pelvis WO IVCon", photo: photo2!) else { fatalError("cannot instantiate study1") }
        
        list += [study1, study2]

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return list.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print("aye")
        // table view cells are reused and should be dequeued using a cell identifier
        let cellIdentifier = "WorklistTableViewCell"

        
        print("aye")
        
        //*** this line is giving me the NSInternalInconsistencyException
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? WorklistTableViewCell else {
            fatalError("The dequeued cell is not an instance of WorklistTableViewCell.")
            
        }
        
        print("aye")
        let worklist = list[indexPath.row]
        
        cell.accessionNo1.text = worklist.accessionNo_
        cell.examDate1.text = worklist.examDate_
        cell.exam1.text = worklist.exam_
        cell.imgView1.image = worklist.photo_
        
        // Configure the cell...

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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
