//
//  Disciplina+CoreDataProperties.swift
//  SlideMenu
//
//  Created by Helaine Alves Pontes on 26/04/2019.
//  Copyright © 2019 ALEXANDRE DA SILVA VALE. All rights reserved.
//
//

import Foundation
import CoreData


extension Disciplina {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Disciplina> {
        return NSFetchRequest<Disciplina>(entityName: "Disciplina")
    }

    @NSManaged public var nome: String?
    @NSManaged public var sala: String?
    @NSManaged public var professor: String?
    @NSManaged public var horario: String?
    @NSManaged public var diaSemana: [String]?

    class func inserir(nome: String, sala: String, professor: String, horario: String, diaSemana: [String]){
        let context = CoreDataManager.persistentContainer.viewContext
        
        let disciplina = Disciplina(context: context)
        disciplina.nome = nome
        disciplina.sala = sala
        disciplina.professor = professor
        disciplina.horario = horario
        disciplina.diaSemana = diaSemana
        
    
    }
}
