import UIKit
import SnapKit
import Then

class ProductTableViewCell : UITableViewCell {
    //MARK: - properties
    static var MyCellIdentifier : String {return String(describing: self)}
    
    private var bottomStackView = UIStackView().then {
        $0.alignment = .center
        $0.axis = .horizontal
        $0.spacing = 3
        $0.distribution = .fillEqually
    }

    private var productImageView = UIImageView().then {
        $0.image = Image.me
        $0.layer.cornerRadius = 5
        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFit
    }
    
    private var titleLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 18, weight: .medium)
    }
    
    private var detailLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 12, weight: .regular)
        $0.textColor = Color.daangnGray3
    }
    
    private var priceLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 16, weight: .bold)
    }
    
    
    private let chatIconImageView = UIImageView().then {
        $0.image = Image.chatIcon
        $0.tintColor = Color.daangnGray3
        $0.contentMode = .scaleAspectFit
    }
    
    private var chatCountLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 7, weight: .regular)
        $0.textColor = Color.daangnGray4
    }
    
    private let heartIconImageView = UIImageView().then {
        $0.image = Image.heartIcon
        $0.tintColor = Color.daangnGray3
        $0.contentMode = .scaleAspectFit
    }
    
    private var heartCountLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 7, weight: .regular)
        $0.textColor = Color.daangnGray4
    }
    
    //MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setLayout()
        configUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ProductTableViewCell {
    //MARK: - UI
    private func setLayout(){
        bottomStackView.addArrangedSubview(chatIconImageView)
        bottomStackView.addArrangedSubview(chatCountLabel)
        bottomStackView.addArrangedSubview(heartIconImageView)
        bottomStackView.addArrangedSubview(heartCountLabel)
        
        contentView.addSubviews([
                                productImageView,
                                titleLabel,
                                detailLabel,
                                priceLabel,
                                bottomStackView
        ])
        
        productImageView.snp.makeConstraints {
            $0.top.equalToSuperview().inset(15)
            $0.leading.equalToSuperview().inset(15)
            $0.width.height.equalTo(100)
        }
        
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().inset(15)
            $0.leading.equalTo(productImageView.snp.trailing).offset(15)

        }

        detailLabel.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(7)
            $0.leading.equalTo(productImageView.snp.trailing).offset(15)
        }
        
        priceLabel.snp.makeConstraints {
            $0.top.equalTo(detailLabel.snp.bottom).offset(9)
            $0.leading.equalTo(productImageView.snp.trailing).offset(15)
        }


        bottomStackView.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(15)
            $0.bottom.equalToSuperview().inset(15)
            $0.width.equalTo(90)
        }
    }
    
    private func configUI(){
        self.backgroundColor = .white
    }
    
    //MARK: - Custom Method
    
    func setData(_ data : ProductDataModel){
        productImageView.image = data.productImage
        titleLabel.text = data.title
        detailLabel.text = data.address + ", \(data.passedTime)일 전"
        priceLabel.text = "\(data.price)원"
        chatCountLabel.text = "\(data.chatCount)"
        heartCountLabel.text =  "\(data.heartCount)"
    }
}
