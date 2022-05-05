import UIKit
import Then

final class MainNavigationController : BaseNavigationController{
    
    //MARK: - Properties
    private lazy var searchBtn = UIBarButtonItem().then {
        $0.customView = makeBarButtonItem(image: Image.searchIcon, tag: 0)
    }
    private lazy var menuBtn = UIBarButtonItem().then {
        $0.customView = makeBarButtonItem(image: Image.menuIcon, tag: 1)
    }
    private lazy var alarmBtn = UIBarButtonItem().then {
        $0.customView = makeBarButtonItem(image: Image.alarmIcon, tag: 2)
    }
    
    //MARK: - Life cycle
    
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        initNavigationItem(navigationItem: rootViewController.navigationItem)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initNavigationItem(navigationItem: UINavigationItem?){
        let spacing = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        spacing.width = 6
        navigationItem?.rightBarButtonItems = [alarmBtn,spacing,menuBtn,spacing,searchBtn]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//MARK: - custom method
extension MainNavigationController{
    private func makeBarButtonItem(image: UIImage, tag: Int) -> UIButton{
        let button = UIButton(type: .custom)
        button.tag = tag
        button.setImage(image, for: .normal)
        button.frame = CGRect(x: 0, y: 0, width: 32, height: 32)
        button.addTarget(self, action: #selector(buttonDidTapped(_:)), for: .touchUpInside)
        return button
    }
}
//MARK: - @objc
extension MainNavigationController{
    @objc
    private func buttonDidTapped(_ sender: UIButton) {
        
    }
}
