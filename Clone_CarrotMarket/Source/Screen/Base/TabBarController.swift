import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        makeTabBarItems()
        setTabbarAppearance()
        makeBorder()
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem){
        guard let itemView = item.value(forKey: "view") as? UIView else {return}
        let itemAnimator = UIViewPropertyAnimator(duration: 0.1, dampingRatio: 0.5){
            itemView.transform = CGAffineTransform.identity.scaledBy(x: 1.2, y: 1.2)
        }
        itemAnimator.addAnimations({itemView.transform = .identity},delayFactor: 0.5)
        itemAnimator.startAnimation()
    }
}

extension TabBarController{
    private func makeTabBarItems(){
        
        
    }
    private func setTabbarAppearance(){}
    private func makeBorder(){}
}
