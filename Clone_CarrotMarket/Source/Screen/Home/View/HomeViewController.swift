//
//  HomeViewController.swift
//  Clone_CarrotMarket
//
//  Created by 장석우 on 2022/05/15.
//

import UIKit
import SnapKit
import Then

class HomeViewController: UIViewController {
    
    let productTableView = UITableView()

    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configUI()
        setLayout()
        setTableView()
        
    }
    
}

//MARK: - Set UI
extension HomeViewController {
  
    private func configUI(){
        self.view.backgroundColor = .white
    }

    private func setLayout(){
        self.view.addSubview(productTableView)

        productTableView.snp.makeConstraints {
            $0.trailing.leading.top.height.equalToSuperview()
        }
    }
    
    
}

//MARK: - Set TableView
extension HomeViewController : UITableViewDelegate, UITableViewDataSource{
    
    private func setTableView(){
        productTableView.register(ProductTableViewCell.self, forCellReuseIdentifier: ProductTableViewCell.MyCellIdentifier)
        productTableView.delegate = self
        productTableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ProductDataModel.sampleData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ProductTableViewCell.MyCellIdentifier, for: indexPath) as? ProductTableViewCell else {return UITableViewCell()}
        cell.setData(ProductDataModel.sampleData[indexPath.row])
        return cell
    }
    
    
    
}
