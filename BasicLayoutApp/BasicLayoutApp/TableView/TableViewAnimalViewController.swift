//
//  TableViewAnimalViewController.swift
//  BasicLayoutApp
//
//  Created by Denisse Verdiales on 07/07/22.
//

import UIKit

class TableViewAnimalViewController: UIViewController {

    private var animals : [Animal] = [ Animal(image: "1", name: "Ankara", type: "a",
                                            info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "2", name: "Antalya", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "3", name: "Aydin", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "4", name: "Bodrum", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "5", name: "Canakkale", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "6", name: "Cappadocia", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "7", name: "Efes", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "8", name: "Eskisehir", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "9", name: "Fethiye", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "10", name: "Istanbul", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "11", name: "Izmir", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "12", name: "Mardin", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "13", name: "Nemrut", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "14", name: "Pamukkale", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "15", name: "Patara", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "16", name: "Rize", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "18", name: "Sumela", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "17", name: "Salda", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "19", name: "Sumela", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "20", name: "Sumela", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "21", name: "Sumela", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "22", name: "Sumela", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "23", name: "Sumela", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "24", name: "Sumela", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "25", name: "Sumela", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "26", name: "Sumela", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "27", name: "Sumela", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "28", name: "Sumela", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "29", name: "Sumela", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut."),
                                           Animal(image: "30", name: "Sumela", type: "a",
                                           info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.")]
    
    
    @IBOutlet weak var AnimalTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.AnimalTableView.dataSource = self
        self.AnimalTableView.delegate = self
        self.AnimalTableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        
    }
    
    
}

extension TableViewAnimalViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell else{
            return UITableViewCell()
        }
        
        let animal = animals[indexPath.row]
        
        cell.animalImagenView.image = UIImage(named: animal.image)
        cell.lblName.text = "Name:" + animal.name
        cell.lblType.text = "Type: " + animal.type
        
        return cell
        
    }
}

extension TableViewAnimalViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let infoDetail = animals[indexPath.row]
        guard let vc = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else {return}
        vc.configureDetail(imgStr: infoDetail.image, name: infoDetail.name, info: infoDetail.info)
        self.navigationController?.pushViewController(vc, animated: true)
        
    
    }

}
