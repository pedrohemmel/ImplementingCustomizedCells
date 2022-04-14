//
//  ViewController.swift
//  ImplementingCustomizedCells
//
//  Created by Pedro Henrique Dias Hemmel de Oliveira Souza on 13/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inptPais: UITextField!
    @IBOutlet weak var comidaTableView: UITableView!
    
    var comidas : [String] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        comidaTableView.delegate = self
        comidaTableView.dataSource = self
    }

    @IBAction func adicionaPais(_ sender: Any) {
        guard var txtPais : String = inptPais.text else {return}
        if(txtPais != "") {
            comidas.append(txtPais)
            comidaTableView.reloadData()
        }
        inptPais.text = "";
    }
    
}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comidas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = comidaTableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        
        let comida = comidas[indexPath.row]
        cell.imgComida.image = UIImage(named: comida)
        cell.lblComida.text = comida
        
        return cell
    }
    
    
}

