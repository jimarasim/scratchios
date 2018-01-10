//
//  ViewController.swift
//  scratchios
//
//  Created by JAMES K ARASIM on 6/19/17.
//  Copyright © 2017 JAMES K ARASIM. All rights reserved.
//

import UIKit

extension String {
    subscript (i: Int) -> Character {
        return self[index(startIndex, offsetBy: i)]
    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var statusfield: UITextField!
    @IBAction func clear(_ sender: Any) {
        textfield.text = ""
    }

    @IBAction func checkPalindrome(_ sender: Any) {
        if isPalindrome(){
            statusfield.text = "Palindrome"
        }
        else{
            statusfield.text = "Not Palindrome"
        }
    }
    
    @IBAction func reverseString(_ sender: Any) {
        statusfield.text = reverseCharacters()
    }
    
    func isPalindrome()->Bool{
        if let contents: String = textfield.text{
            let contentslength:Int = contents.characters.count
            
            if contentslength == 0{
                return false
            }
            else if contentslength == 1{
                return true
            }
            
            for i in 0...(contentslength/2)-1{
                if contents[i] != contents[contentslength-1-i]{
                    return false
                }
            }
        }
        return true
    }
    
    func reverseCharacters()->String{
        var reversed:String = ""

        if let contents: String = textfield.text{
            var i:Int = contents.characters.count - 1
            while i > -1{
                reversed = reversed + String(contents[i])
                i -= 1
            }
        }
        
        return reversed
    }
    
    
}

