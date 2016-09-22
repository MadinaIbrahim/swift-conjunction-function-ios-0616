//  Sandbox.swift

import Foundation

class Sandbox {

    func listWithElements(elements: [String], conjunction: String?) -> String {
        
        guard let conjunction = conjunction else {return "unknown conjunction"}
        
        
        switch conjunction {
        case "and", "or", "&":
            print("conjunction is valid")
        default:
            return "Not valid conjunction"
        }
        ///
        
        var stringRepresentation = ""
        
        switch true {
            
            
        case elements.isEmpty:
            stringRepresentation = ""
            
        case elements.count == 1 :
            stringRepresentation = elements.first!
       
            
        case elements.count == 2 :
            
           stringRepresentation = "\(elements.first!)" + " \(conjunction) " + "\(elements.last!)"
            ///
        case elements.count >= 3 :
            
            for i in elements {
                if i == elements.last {
                    stringRepresentation = stringRepresentation + ", \(conjunction) " + elements.last!
                    
                } else if i == elements.first {
                    stringRepresentation = stringRepresentation + "\(i)"
                } else {
                    stringRepresentation = stringRepresentation + ", \(i)"
                }
            }
            
        default:
            
            return "Array is empty"
        }
        return stringRepresentation

    }
}
