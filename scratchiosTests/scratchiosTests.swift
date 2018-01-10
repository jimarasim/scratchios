//
//  scratchiosTests.swift
//  scratchiosTests
//
//  Created by JAMES K ARASIM on 6/19/17.
//  Copyright © 2017 JAMES K ARASIM. All rights reserved.
//

import XCTest
@testable import scratchios

class scratchiosTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTupleExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let x:scratchClass = scratchClass()
        let y = x.setAndReturnNameAndAge(name: "jim", age: 44)
        
        print("set name \(y.0) and age \(y.1)")
    }
    
    func testForInLoopWithArray(){
        let x:scratchClass = scratchClass()
        let _ = x.setAndReturnNameAndAge(name: "jim", age: 44)
        x.hobbies = ["skateboarding", "record collecting", "walking", "beach combing"]
        for hobby in x.hobbies!{
            print(hobby)
        }
    }
    
    func testForInLoopWithArrayDeclared(){
        var x:[String] = [String]()
        x.append("first")
        x.append("second")
        x.append("third")
        x.append("fourth")
        
        for value in x{
            print("value \(value)")
        }
    }
    
    func testForInLoopWithClosedRange(){
        for i in 1...10{
            print("i: \(i)")
        }
    }
    
    func testForInLoopHalfOpenRange(){
        let sentence: String = "this is a sentence"
        for i in 0..<sentence.characters.count{
            print("character \(sentence[i])")
        }
    }
    
    func testForInLoopWithDictionary(){
        let books = ["book 1":4.99,"book 2":5.99,"book 3":10.00]
        for (book,price) in books{
            print("\(book) \(price)")
        }
        
        let dictionary = ["cat":"small furry purring animal", "dog":"large furry barking animal"]
        for (word,definition) in dictionary{
            print("\(word) is a \(definition)")
        }
    }
    
    func testPhoneNumberLetterTranslator(){
        let phonepad = ["0":"0","1":"1","2":"ABC","3":"DEF","4":"GHI","5":"JKL","6":"MNO","7":"PQRS","8":"TUV","9":"WXYZ"]
        let phonenumber = "2063727265"
        var phonenumberletters = [String]()
        for i in 0..<phonenumber.characters.count{
            phonenumberletters.append(phonepad[String(phonenumber[i])]!)
        }
        
        for x in phonenumberletters{
            print("\(x)")
        }
        
        //area code
        for i in 0..<phonenumberletters[0].characters.count{
            for j in 0..<phonenumberletters[1].characters.count{
                for k in 0..<phonenumberletters[2].characters.count{
                    print("areacode: \(phonenumberletters[0][i]) \(phonenumberletters[1][j]) \(phonenumberletters[2][k])")
                }
            }
        }
        
        //prefix
        for i in 0..<phonenumberletters[3].characters.count{
            for j in 0..<phonenumberletters[4].characters.count{
                for k in 0..<phonenumberletters[5].characters.count{
                    print("prefix: \(phonenumberletters[3][i]) \(phonenumberletters[4][j]) \(phonenumberletters[5][k])")
                }
            }
        }
            
        //suffix
        for i in 0..<phonenumberletters[6].characters.count{
            for j in 0..<phonenumberletters[7].characters.count{
                for k in 0..<phonenumberletters[8].characters.count{
                    for l in 0..<phonenumberletters[9].characters.count{
                        print("suffix: \(phonenumberletters[6][i]) \(phonenumberletters[7][j]) \(phonenumberletters[8][k]) \(phonenumberletters[9][l])")
                    }
                }
            }
        }
        
    }
    
    func testWhileLoopBackwardsSentencePrintout(){
        let sentence:String = "this is another sentence"
        var count = sentence.characters.count-1
        while count > -1{
            print("\(sentence[count])")
            count -= 1
        }
    }
    
    func testRepeatWhileEvenNumbers(){
        var count:Int = 0
        repeat{
            print("\(count)")
            count += 2
        } while count < 10
    }
    
    func testSwitch(){
        let names:[String] = ["john","jack","fred","bob","sam"]
        for name in names{
            switch name{
                case "bob":
                    print("BOB")
                case "fred":
                    print("FRED")
                case "jack":
                    print("JACK")
                case "john":
                    print("JOHN")
                default:
                    print("\(name)")
            }
        }
    }
    
    func testForcedUnwrapping(){
        var type:String?
        if(type == nil){
            print("type is nil")
        }
        
        type = "stupid"
        print("type is \(String(describing: type)) but force unwrapped is \(type!)")
        
        if let type2 = type{
            print("type2 is \(type2)")
        }
    }
    
    func testMultipleParameterNames(){
        aliasedParameterNames(first: "jim", last: "arasim")
    }
    
    func aliasedParameterNames(first f:String, last l:String)
    {
        print("first: \(f) last: \(l)")
    }
    
    
    func testAliasedParameterNames(){
        aliasedParameterNames(first: "jim", "arasim")
    }
    
    func aliasedParameterNames(first f:String, _ l:String)
    {
        print("first: \(f) last: \(l)")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testSolution(){
        var input: [Int] = [-1,3,-4,5,1,-6,2,1];
        print("\(solution(&input))")
    }
    
    public func solution(_ A : inout [Int]) -> Int{
        for i in 1..<A.count{
            let sumPreNumbers:Int = sumArrayNumbers(arr: A, start: 0, stop: i-1)
            let sumPostNumbers:Int = sumArrayNumbers(arr: A, start: i+1, stop: A.count-1)
            
            if sumPreNumbers == sumPostNumbers{
                return i
            }
        }
        return -1
    }
    
    public func sumArrayNumbers(arr : [Int], start:Int, stop:Int) -> Int{
        var sum:Int = 0
        for i in start...stop{
            sum += arr[i]
        }
        return sum
    }
    
}
