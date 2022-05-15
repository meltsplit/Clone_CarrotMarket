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
    //MARK: - Properties
    
    let productTableView = UITableView()
    
    private let plusBtn = UIButton().then {
        $0.setImage(Image.plusBtnIcon, for: .normal)
        $0.contentMode = .scaleAspectFit
    }

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
        self.view.addSubview(plusBtn)

        productTableView.snp.makeConstraints {
            $0.trailing.leading.top.height.equalToSuperview()
        }
        
        plusBtn.snp.makeConstraints {
            $0.bottom.equalToSuperview().inset(100)
            $0.trailing.equalToSuperview().inset(19)
            $0.width.height.equalTo(70)
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
