//
//  ViewController.swift
//  signos
//
//  Created by César  Ferreira on 17/12/19.
//  Copyright © 2019 César  Ferreira. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos: [String] = []
    var significadoSignos: [String] = []


    override func viewDidLoad() {
        super.viewDidLoad()

        setupListSignos()
        setupListSignificadoSignos()

    }
    
    private func setupListSignos() {
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
    }

    private func setupListSignificadoSignos() {
        significadoSignos.append("As pessoas dos signos de água são predominantemente emocionais e ultrassensíveis. Eles são altamente intuitivos e tão misteriosos quanto o próprio oceano.")
        significadoSignos.append("s pessoas dos signos de fogo tendem a ser passionais, dinâmicas e temperamentais. Elas enraivecem facilmente, porém também perdoam facilmente.")
        significadoSignos.append("As pessoas dos signos de Terra são as mais pés-no-chão do planeta e aquelas que nos trazem de volta à realidade. ")
        significadoSignos.append("As pessoas dos signos de ar amam a comunicação e os relacionamentos com outras pessoas. São pensadoras, amigáveis, intelectuais, comunicativas e analíticas. ")
        significadoSignos.append("As pessoas dos signos de água são predominantemente emocionais e ultrassensíveis. Eles são altamente intuitivos e tão misteriosos quanto o próprio oceano.")
        significadoSignos.append("s pessoas dos signos de fogo tendem a ser passionais, dinâmicas e temperamentais. Elas enraivecem facilmente, porém também perdoam facilmente.")
        significadoSignos.append("As pessoas dos signos de Terra são as mais pés-no-chão do planeta e aquelas que nos trazem de volta à realidade. ")
        significadoSignos.append("As pessoas dos signos de ar amam a comunicação e os relacionamentos com outras pessoas. São pensadoras, amigáveis, intelectuais, comunicativas e analíticas. ")
        significadoSignos.append("As pessoas dos signos de água são predominantemente emocionais e ultrassensíveis. Eles são altamente intuitivos e tão misteriosos quanto o próprio oceano.")
        significadoSignos.append("s pessoas dos signos de fogo tendem a ser passionais, dinâmicas e temperamentais. Elas enraivecem facilmente, porém também perdoam facilmente.")
        significadoSignos.append("As pessoas dos signos de Terra são as mais pés-no-chão do planeta e aquelas que nos trazem de volta à realidade. ")
        significadoSignos.append("As pessoas dos signos de ar amam a comunicação e os relacionamentos com outras pessoas. São pensadoras, amigáveis, intelectuais, comunicativas e analíticas. ")
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = tableView.dequeueReusableCell(withIdentifier: "item_signo", for: indexPath)
        
        celula.textLabel?.text = signos[indexPath.row]
        
        return celula
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertController = UIAlertController(title: "Significado do signo", message: significadoSignos[ indexPath.row ], preferredStyle: .alert)
        let confirm = UIAlertAction(title: "Ok", style: .default, handler: nil)

        alertController.addAction(confirm)
        
        present(alertController, animated: true)
        
    }
}

