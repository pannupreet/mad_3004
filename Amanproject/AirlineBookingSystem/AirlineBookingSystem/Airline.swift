//
//  Airline.swift
//  AirlineBookingSystem
//
//  Created by MacStudent on 2018-07-23.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Airline{
    
    var AirlineID : Int?
    
    private var AirlineDescription : String?
    
    private var AirlineType : String?
    
    
    
    var AirlineDescription : String?{
        
        get{
            
            return self.AirlineDescription
            
        }
        
        set{
            
            self.AirlineDescription = newValue
            
        }
        
    }
    
    
    
    var AirlineType : String?{
        
        get{
            
            return self.AirlineType
            
        }
        
        set{
            
            self.AirlineType = newValue
            
        }
        
    }
    
    
    
    
    
    init(){
        
        self.AirlineID = 0
        
        self.AirlineDescription = ""
        
        self.AirlineType = ""
        
    }
    
    
    
    init(AirlineID: Int, AirlineDescription: String, AirlineType: String){
        
        
        
        self.AirlineID = airlineID
        
        self.AirlineDescription = airlineDescription
        
        self.AirlineType = airlineType
        
    }
    
    
    
    func displayData() -> String{
        
        var returnData = ""
        
        
        
        if self.AirlineID != nil{
            
            returnData += "Airline ID : \(String(describing: self.AirlineID))"
            
        }
        
        if self.AirlineDescription != nil{
            
            returnData += "\n Airline Description : " + self.AirlineDescription!
            
        }
        
        if self.AirlineType != nil{
            
            returnData += "\n Airline Type : " + self.AirlineType!
            
        }
        
        return returnData
        
    }
    
    
    
    func registerUser(){
        
        print("Enter Airline Id : ")
        
        self.AirlineID = (Int)(readLine()!)!
        
        print("Enter Airline Description : ")
        
        self.AirlineDescription = readLine()!
        
        print("Enter Airline Type : ")
        
        self.AirlineType = readLine()!
        
    }
    
}
