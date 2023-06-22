//
//  ContentModel.swift
//  questions888
//
//  Created by Marcel Maciaszek on 21/06/2023.
//

import Foundation

class ContentModel: ObservableObject {
    
    @Published var questions = [Question]()
    
    init() {
        getLocalData()
    }
    
    func getLocalData() {
        
        // Get a url to the json file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do {
            // Read the file into a data object
            let jsonData = try Data(contentsOf: jsonUrl!)
            
            // Try to decode the json into an array of modules
            let jsonDecoder = JSONDecoder()
            let questions = try jsonDecoder.decode([Question].self, from: jsonData)
            
            // Assign parsed modules to modules property
            self.questions = questions
        }
        catch {
            // TODO log error
            print("Couldn't parse local data")
        }
        
        
        
    }
}
