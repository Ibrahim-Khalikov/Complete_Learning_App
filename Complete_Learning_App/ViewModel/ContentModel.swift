//
//  ContentModel.swift
//  Complete_Learning_App
//
//  Created by cloud_vfx on 12/08/21.
//

import Foundation

class ContentModel: ObservableObject {
    
    @Published var modules = [Model]()
    
    var styleData: Data?
    
    init() {
        getLocalData()
    }
    
    func getLocalData(){
        
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do{
            
            let jsonData = try Data(contentsOf: jsonUrl!)
            
            modules = try JSONDecoder().decode([Model].self, from: jsonData)
            
        }
        catch{
            print("could not find json find")
        }
        
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        
        do{
            let styledata = try Data(contentsOf: styleUrl!)
            
            self.styleData = styledata
            
        }
        catch{
            print("not style data")
        }
        
    }
}
