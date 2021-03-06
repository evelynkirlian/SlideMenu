//
//  TableViewController.swift
//  SlideMenu
//
//  Created by ALEXANDRE DA SILVA VALE on 25/04/2019.
//  Copyright © 2019 ALEXANDRE DA SILVA VALE. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var arrayNomeDasDisciplinas = Disciplina.buscarTodos()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let d = Disciplina.searchForAll()
        return arrayNomeDasDisciplinas.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let celula = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)
        celula.backgroundColor = #colorLiteral(red: 0.8352941176, green: 0.9529411765, blue: 1, alpha: 0.2981592466)
        celula.textLabel?.text = arrayNomeDasDisciplinas[indexPath.row].nome!
        return celula
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Clicou no item \(indexPath.row)")
        performSegue(withIdentifier: "detalhe", sender: self)
        
        
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete{
            self.arrayNomeDasDisciplinas.remove(at: indexPath.row)
            Disciplina.remover(nome: arrayNomeDasDisciplinas[indexPath.row].nome!)
            tableView.reloadData()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "detalhe"){
            guard let second = segue.destination as? DetailsViewController, let indexpath = tableView.indexPathForSelectedRow else{
                fatalError("Problemas")
        }
        let d = Disciplina.buscarTodos()
            second.selectedNome = d[indexpath.row].nome
            second.selectedProf = d[indexpath.row].professor
            second.selectedSala = d[indexpath.row].sala
            second.selectedHorario = d[indexpath.row].horario
            second.selectedDia = d[indexpath.row].diaSemana
    }
    }

    
    
    
    
    
    @IBAction func add(_ sender: Any) {
        performSegue(withIdentifier: "add", sender: self)
    }
}
