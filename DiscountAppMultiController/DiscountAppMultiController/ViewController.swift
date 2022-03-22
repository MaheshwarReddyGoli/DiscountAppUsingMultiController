//
//  ViewController.swift
//  DiscountAppMultiController
//
//  Created by student on 3/22/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountOutlet: UITextField!
    
    @IBOutlet weak var discountRateOutlet: UITextField!
    var priceAfterDiscount = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateDiscountClicked(_ sender: UIButton) {
        
        //Read the values and convert to doubles
        var amount = Double(amountOutlet.text!)
        var discountRate = Double(discountRateOutlet.text!)
        
        
        priceAfterDiscount = amount! - (amount!*discountRate!/100)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultSegue"{
            var destination = segue.destination as! ResultViewController
            
            destination.amount = amountOutlet.text!
            destination.discRate = discountRateOutlet.text!
            destination.priceAfterDisc = String(priceAfterDiscount)
        }
    }
}

