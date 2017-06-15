//
//  PatientViewController.swift
//  worklistDemo
//
//  Created by Joren Winge on 6/15/17.
//  Copyright © 2017 Ross Higgins. All rights reserved.
//

import UIKit

class PatientViewController: UIViewController {
    var worklist:Worklist?
    @IBOutlet fileprivate var patientInformationImageView: UIImageView!
    @IBOutlet fileprivate var localizerImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Notes", style: UIBarButtonItemStyle.plain, target: self, action: #selector(notes))
        navigationItem.title = "New Chat"
        displayPatient()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func notes(){

    }

    func displayPatient(){
        localizerImageView.image = worklist?.photo_
    }

}
