//
//  DetailsViewController.swift
//  SlideMenu
//
//  Created by Helaine Alves Pontes on 29/04/2019.
//  Copyright © 2019 ALEXANDRE DA SILVA VALE. All rights reserved.
//

import UIKit


class DetailsViewController: UIViewController {
    
    @IBOutlet weak var nomeDaDisciplinaLabel: UILabel!
    
    @IBOutlet weak var nomeProfessorLabel: UILabel!
    
    @IBOutlet weak var salaLabel: UILabel!
    
    @IBOutlet weak var horarioLabel: UILabel!
    
    @IBOutlet weak var diaSemanaLabel: UILabel!
    
    
    var selectedNome: String?
    var selectedProf: String?
    var selectedSala: String?
    var selectedHorario: String?
    var selectedDia: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nomeDaDisciplinaLabel.text = selectedNome
        nomeDaDisciplinaLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        nomeProfessorLabel.text = selectedProf
        nomeProfessorLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        salaLabel.text = selectedSala
        salaLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        horarioLabel.text = selectedHorario
        horarioLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        diaSemanaLabel.text = selectedDia
        diaSemanaLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
