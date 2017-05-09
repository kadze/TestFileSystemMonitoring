//
//  DirectoryObserver.swift
//  TestFileSystemMonitoring
//
//  Created by ASH on 5/8/17.
//  Copyright © 2017 SAP. All rights reserved.
//

import UIKit

class DirectoryObserver: NSObject, NSFilePresenter, UIDocumentPickerDelegate {
    
    //MARK:- UIDocumentPickerDelegate
    
    var presentedItemURL: URL? = URL(string: "")//maybe get from user defaults
    var presentedItemOperationQueue: OperationQueue = OperationQueue.main
    
    func presentedItemDidMove(to newURL: URL) {
        print("presentedItemDidMove")
    }
    
    func presentedItemDidChange() {
        print("presentedItemDidChange")
    }
    
    func presentedSubitemDidAppear(at url: URL) {
        print("presentedSubitemDidAppear")
    }
    
    func presentedSubitem(at oldURL: URL, didMoveTo newURL: URL) {
        print("presentedSubitem(at oldURL: URL, didMoveTo newURL: URL)")
    }
    
    func presentedSubitemDidChange(at url: URL) {
        print("presentedSubitemDidChange(at url: URL)")
    }
    
    //MARK:- UIDocumentPickerDelegate
    
    func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentAt url: URL) {
        print("didPick")
    }
    
    func documentPickerWasCancelled(_ controller: UIDocumentPickerViewController) {
        print("cancelled")
    }
}
