//
//  MemoDataService.swift
//  MemoApplication
//
//  Created by 이준수 on 2020/02/13.
//  Copyright © 2020 이준수. All rights reserved.
//

import Foundation
import CoreData
import UIKit

protocol MemoDataServiceType {
    
    func fetchEntity(entityName: String) -> [NSManagedObject]?
    func saveEntity(entityName: String, value: String, key: String) -> Bool
}

class MemoDataServie: MemoDataServiceType {
    
    var managedContext: NSManagedObjectContext? {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return nil
        }
        
        return appDelegate.persistentContainer.viewContext
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//
//        guard save(name: "Test") else {
//            return
//        }
//
//        guard let result = fetch() else {
//            return
//        }
//
//        for element in result {
//            guard let name = element.value(forKey: "name") else {
//                continue
//            }
//
//            print("people = \(name)")
//        }
//    }
    
    func fetchEntity(entityName: String) -> [NSManagedObject]? {
        guard let managedContext = managedContext else {
            return nil
        }
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: entityName)
        
        do {
            return try managedContext.fetch(fetchRequest)
        } catch let error as NSError {
            print("error : \(error)")
        }
        
        return nil
    }
    
    
    // 키 값 쌍을 set 하고 저장
    func saveEntity(entityName: String, value: String, key: String) -> Bool {
        guard let managedContext = managedContext else {
            return false
        }
        
        guard let targetEntity = NSEntityDescription.entity(forEntityName: entityName, in: managedContext) else {
            return false
        }
        
        let target = NSManagedObject(entity: targetEntity, insertInto: managedContext)
        target.setValue(value, forKey: key)
        
        do {
            try managedContext.save()
            return true
        } catch let error as NSError {
            print("error: \(error)")
        }
        
        return false
    }
}
