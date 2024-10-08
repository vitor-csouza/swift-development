//
//  ListaTabelaViewController.swift
//  store
//
//  Created by Usuário Convidado on 07/10/24.
//

import UIKit

class ListaTabelaViewController: UITableViewController {
    
    var aplicativoArray = [Aplicativo]()
    var app: App!=nil

    override func viewDidLoad() {
        super.viewDidLoad()
        loadJson()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return aplicativoArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        cell.textLabel?.text = aplicativoArray[indexPath.row].name
        cell.imageView?.image = aplicativoArray[indexPath.row].imagem
        cell.detailTextLabel?.text = aplicativoArray[indexPath.row].categoria
        return cell
    }
    
    func loadJson(){
        let jsonUrlString = "https://itunes.apple.com/br/rss/topfreeapplications/limit=10/json"
        let url = URL(string: jsonUrlString)
        
        URLSession.shared.dataTask(with: url!) { data, response, error in
            guard let data = data else {return}
            do {
                self.app = try JSONDecoder().decode(App.self, from: data)
                var aplicativos = self.app.feed.entry
                var index = 0
                while (index <= aplicativos.count-1 ) {
                    let objeto = Aplicativo()
                    objeto.name = aplicativos[index].name.label
                    objeto.categoria = aplicativos[index].category.attributes.label
                    objeto.imageSTR = aplicativos[index].image[0].label
                    let myURL = URL(string: objeto.imageSTR)
                    let imageData: Data = try Data(contentsOf: myURL!)
                    let myImage = UIImage(data: imageData)
                    objeto.imagem = myImage
                    self.aplicativoArray.append(objeto)
                    index += 1
                }
                DispatchQueue.main.sync {
                    self.tableView.reloadData()
                }
            } catch let jsonError {
                print("Error de serealização: ", jsonError)
            }
        }
        .resume()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
