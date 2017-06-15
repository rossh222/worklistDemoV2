//
//  Worklist.swift
//  worklistDemo
//
//  Created by Ross Higgins on 6/14/17.
//  Copyright © 2017 Ross Higgins. All rights reserved.
//

import Foundation
import UIKit


class Worklist  {

    var accessionNo_: String
    var examDate_: String
    var exam_: String
    var photo_: UIImage?


    //MARK: Initialization
    init?(accessionNo: String, examDate: String, exam: String, photo: UIImage) {
        
        guard !accessionNo.isEmpty else {
            return nil
        }
        
        guard !examDate.isEmpty else {
            return nil
        }
        
        guard !exam.isEmpty else {
            return nil
        }
        
        self.accessionNo_ = accessionNo
        self.examDate_ = examDate
        self.exam_ = exam
        self.photo_ = photo
        
    }
}
