//
//  DataHelper.swift
//  AirlineBookingSystem
//
//  Created by MacStudent on 2018-07-23.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class DataHelper{
    var Airline = [Int : AirlineID]()
    
    init(){
        self.loadAirlineData()
    }
    
    func loadAirlineData(){
        AirlineList = [:]
        
        let AirIndia = AirIndia(AirlineID: 100, AirlineDiscription="One of the best indian airline" , AirlineType = "International" )
        AirlineList[AirIndia.AirlineID!] = AirIndia
        let AirCanada = AirCanada(AirlineID: 101, AirlineDiscription="First Canadian airline" , AirlineType = "International" )
        AirlineList[AirCanada.AirlineID!] = AirCanada
        let Etihad = AirIndia(AirlineID: 102, AirlineDiscription="Most preffeble airline" , AirlineType = "International" )
        AirlineList[AirIndia.AirlineID!] = Etihad
    }let JetAirways = JetAirways(AirlineID: 103, AirlineDiscription="Common airline" , AirlineType = "International" )
    AirlineList[JetAirways.AirlineID!] = JetAirways
    
    func displayProducts(){
        for (_, value) in self.ProductList.sorted(by: { $0.key < $1.key} ){
            print(value.displayData())
        }
    }
}


