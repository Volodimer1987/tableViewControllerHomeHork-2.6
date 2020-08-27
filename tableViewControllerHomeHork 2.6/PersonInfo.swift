//
//  PersonInfo.swift
//  tableViewControllerHomeHork 2.6
//
//  Created by vladimir gennadievich on 26.08.2020.
//  Copyright © 2020 Vladimir Gennadievich. All rights reserved.
//

import Foundation


let personsName = [
                "Vladimir","Alexsei","Anton","Aleksandr","Nikolay",
                "Stepan","Ivan","Gennadii","Maria","Svetlana"]

let personsSername = [
                "Kynicin","Navalnii","Kylchickii","Zavorotnuk","Stepanenko",
                "Bendera","Mishin","Kovach","Mironova","kozlova"]

let phoneNumbersForPersons = [
                "0965775441","0672631741","0969116350","0969143630","0974546744",
                "0637395238","0503648734","0996463678","09957483478","0672636467"]

let personMails = [
                "Kynicin@Mail.ru","Navalnii@Mail.ru","Kylchickii@Mail.ru","Zavorotnuk@Mail.ru","Stepanenko@Mail.ru",
                "Bendera@Mail.ru","Mishin@Mail.ru","Kovach@Mail.ru","Mironova@Mail.ru","kozlova@Mail.ru"]

var array = [0,1,2,3,4,5,6,7,8,9]

struct Person {
    var name : String
    var sername:String
    var phoneNumber:String
    var mail:String
    
    static var indexNameTaking = array.shuffled()
    static var indexSernameTaking = array.shuffled()
    static var indexPhoneNumbersTaking = array.shuffled()
    static var indexMailTaking = array.shuffled()
    
    
    
 static func randomNameSernameArray() -> [Person] {
    
       var arrayForReturn = [Person]()
        
        while arrayForReturn.count != personsName.count {
            
            let popList = Person.indexSernameTaking.popLast()!
            
            let person = Person(name:personsName[Person.indexNameTaking.popLast()!],
                                sername: personsSername[popList],
                                phoneNumber: phoneNumbersForPersons[Person.indexPhoneNumbersTaking.popLast()!],
                                mail: personMails[popList])
        
            arrayForReturn.append(person)
        }
           return arrayForReturn
    }
}


