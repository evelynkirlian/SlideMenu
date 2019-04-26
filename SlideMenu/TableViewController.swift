//
//  TableViewController.swift
//  SlideMenu
//
//  Created by ALEXANDRE DA SILVA VALE on 25/04/2019.
//  Copyright © 2019 ALEXANDRE DA SILVA VALE. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var numero = ["1","2","3","4","5","6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    override func numberOfSections(in tableView: UITableView) -> Int {
       return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return numero.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)
        celula.textLabel?.text = numero[indexPath.row]
        return celula
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Clicou no item \(indexPath.row)")
        performSegue(withIdentifier: "detalhe", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "detalhe"){
            
        }
    }
    @IBAction func add(_ sender: Any) {
        performSegue(withIdentifier: "add", sender: self)
    }
}
