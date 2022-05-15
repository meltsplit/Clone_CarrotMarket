import UIKit

class BaseNavigationController : UINavigationController{
    
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        setNavigationBarApperance()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//MARK: - customize func

extension BaseNavigationController {
    
    private func setNavigationBarApperance(){
        let appearnace = UINavigationBarAppearance()
        appearnace.configureWithTransparentBackground()
        appearnace.backgroundColor = Color.daangnWhite
        appearnace.shadowColor = Color.daangnGray3
        
        navigationBar.standardAppearance = appearnace
        navigationBar.scrollEdgeAppearance = appearnace
        navigationBar.tintColor = UIColor.black
    
    }
    
}
