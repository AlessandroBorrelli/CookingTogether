//
//  CoreDataManagers.swift
//  AleMockup
//
//  Created by alessandro borrelli on 15/02/22.
//

import Foundation
import CoreData


class CoreDataManagers {
    let persisentContainer: NSPersistentContainer
    
    static let shared = CoreDataManagers()
    
    
    private init(){
        persisentContainer = NSPersistentContainer(name: "ModelElem")
        persisentContainer.loadPersistentStores { (description, error) in
            if let error = error{
                fatalError("errore graveeee \(error.localizedDescription)")
            }
        }
    }
    
    
    func DeleteFamiglia(famiglia: Famiglia) {
           
           persisentContainer.viewContext.delete(famiglia)
           
           do {
               try persisentContainer.viewContext.save()
           } catch {
               persisentContainer.viewContext.rollback()
               print("Failed to save context \(error)")
           }
           
       }
    
    func DeleteMembro(membro: Membri) {
           
           persisentContainer.viewContext.delete(membro)
           
           do {
               try persisentContainer.viewContext.save()
           } catch {
               persisentContainer.viewContext.rollback()
               print("Failed to save context \(error)")
           }
           
       }
    
    
    
        func GetFamiglia() -> [Famiglia]{
            let fetchRequest : NSFetchRequest<Famiglia> = Famiglia.fetchRequest()
            
            do {
               return try persisentContainer.viewContext.fetch(fetchRequest)
                } catch {
                return []
                }
            }
        
    func GetSingleMembro(_ido: Famiglia) -> [Membri]{
            let FetchRequest: NSFetchRequest<Membri>
            FetchRequest = Membri.fetchRequest()
        FetchRequest.predicate =  NSPredicate(format: "ANY relationshipMembri = %@", _ido)

          //  FetchRequest.predicate = NSPredicate(format: "ANY relationshipMembri LIKE %@", _ido)
            
        do {
           return try persisentContainer.viewContext.fetch(FetchRequest)
            } catch {
            return []
            }
        }
    
    
    func GetMembri() -> [Membri]{
        let fetchRequest : NSFetchRequest<Membri> = Membri.fetchRequest()
        
        do {
           return try persisentContainer.viewContext.fetch(fetchRequest)
            } catch {
            return []
            }
        }
        
        
        func SaveFamiglia(title: String){
            
            let famiglia = Famiglia(context: persisentContainer.viewContext)
            famiglia.nome = title
            
        do {
            try persisentContainer.viewContext.save()
            } catch {
                print("failed to save")
            }
        }
    
    func SaveMembro(title: String, famiglia: Famiglia){
        
        let membro = Membri(context: persisentContainer.viewContext)
        membro.nome = title
        membro.relationshipMembri = famiglia
        
    do {
        try persisentContainer.viewContext.save()
        } catch {
            print("failed to save")
        }
    }
            
        
        
    
}
