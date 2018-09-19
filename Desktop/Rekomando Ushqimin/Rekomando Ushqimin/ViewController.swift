//
//  ViewController.swift
//  Rekomando Ushqimin
//
//  Created by ICK on 9/19/18.
//  Copyright © 2018 ICK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fotoja: UIImageView!
    @IBOutlet weak var lblTeksti: UILabel!
    var ushqimet:[String] = ["pizza","steak","pasta","doner","burger"]
    var cmimet:[String:Double] = ["pizza":2.5,"steak":1.5,"pasta":2,"doner":3,"burger":3.5]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

   
    @IBAction func sugjero(_ sender: Any) {
        let rand:Int = Int(arc4random_uniform(UInt32(ushqimet.count)))
        let tekst:String = "Ushqimi i rekomaduar per sot eshte \(ushqimet[rand]) dhe kushton \(String(describing: cmimet[ushqimet[rand]])) Euro"
        
        fotoja.image = UIImage.init(named: ushqimet[rand])
        lblTeksti.text = tekst
    }
    
}

