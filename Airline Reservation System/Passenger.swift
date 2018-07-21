//
//  Passenger.swift
//  Airline Reservation System
//
//  Created by MacStudent on 2018-07-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Passenger{
    private var passengerID : Int?
    private var passengerPassNo : String?
    private var name : String?
    private var mobile : String?
    private var email : String?
    private var address : String?
    private var birthdate : String?
    
    //default initializer
    init(){
        self.passengerID = 0
        self.passengerPassNo = ""
        self.name = ""
        self.mobile = ""
        self.email = ""
        self.address = ""
        self.birthdate = ""
    }
    
    //parameterized initializer
    init(passengerID: Int, passengerPassNo: String, name : String, mobile: String, email : String, address: String, birthdate : String){
        
        self.passengerID = passengerID
        self.passengerPassNo = passengerPassNo
        self.name = name
        self.mobile = mobile
        self.email = email
        self.address = address
        self.birthdate = birthdate
    }
    
    //stored property
    var PassengerID : Int? {
        get{ return self.passengerID}
        set{ self.passengerID = newValue}
    }
    var PassengerPassNo : String?{
        get{return self.passengerpassno}
        set{self.passengerpassno = newValue}
    }
    var Name: String?{
        get{return self.name}
        set{self.name = newValue}
    }
    var Mobile : String?{
        get{return self.mobile}
        set{self.mobile = newValue}
    }
    var Email : String?{
        get{return self.email}
        set{self.email = newValue}
    }
    var Address : String?{
        get{return self.address}
        set{self.address = newValue}
    }
    var Birthdate : String?{
        get{return self.birthdate}
        set{self.birthdate = newValue}
    }
    
    func displayData() -> String{
        var returnData = ""
        
        if self.passengerID != nil {
            returnData += "\n Passenger ID : \(self.passengerID ?? 0)"
        }
        
        if self.passengerPassNo != nil {
            returnData += "\n Customer Name : \(self.customerName ?? "Unknown")"
        }
        if self.address != nil {
            returnData += "\n Customer address : \(self.address ?? "Unknown")"
        }
        if self.email != nil {
            returnData += "\n Customer Email : \(self.email ?? "email@mad.com")"
        }
        if self.creditCardInfo != nil {
            returnData += "\n Customer Credit Card Info : \(self.creditCardInfo ?? "4520-0100-0000-0000")"
        }
        if self.shippingInfo != nil {
            returnData += "\n Customer Shipping Info : \(self.shippingInfo ?? "Shipping Instruction")"
        }
        return returnData
    }
    
    func registerUser(){
        print("Enter Customer ID : ")
        self.customerID = (Int)(readLine()!)
        print("Enter Customer Name : ")
        self.customerName = readLine()!
        print("Enter Customer Address : ")
        self.address = readLine()!
        print("Enter Customer Email : ")
        self.email = readLine()!
        print("Enter Customer CreditCardInfo : ")
        self.creditCardInfo = readLine()!
        print("Enter Customer Shipping Info : ")
        self.shippingInfo = readLine()!
        
    }
}
