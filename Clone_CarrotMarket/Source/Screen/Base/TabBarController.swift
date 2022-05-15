import UIKit

final class TabBarController: UITabBarController {
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        makeTabBarItems()
        setTabbarAppearance()
        makeBorder()
    }
    
    // UITabBarDelegate 속 함수
    // 클릭 시 잠깐 커졌다가 작아지는 animation!
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem){
        guard let itemView = item.value(forKey: "view") as? UIView else {return}
        let itemAnimator = UIViewPropertyAnimator(duration: 0.1, dampingRatio: 0.5){
            itemView.transform = CGAffineTransform.identity.scaledBy(x: 1.2, y: 1.2)
        }
        itemAnimator.addAnimations({itemView.transform = .identity},delayFactor: 0.5)
        itemAnimator.startAnimation()
    }
}

//MARK: - Custom Method

extension TabBarController{
    private func makeTabBarItems(){
        let homeVC = HomeViewController()
        homeVC.tabBarItem = UITabBarItem(
            title: "홈",
            image: Image.home_E_Icon,
            selectedImage: Image.home_F_Icon
        )
        
        let townVC = MyTownViewController()
        townVC.tabBarItem = UITabBarItem(
            title: "동네생활",
            image: Image.town_E_Icon,
            selectedImage: Image.town_F_Icon
        )
        
        let aroundVC = MyAroundViewController()
        aroundVC.tabBarItem = UITabBarItem(
            title: "내 근처",
            image: Image.myAround_E_Icon,
            selectedImage: Image.myAround_F_Icon
        )
        
        let chatVC = ChattingViewController()
        chatVC.tabBarItem = UITabBarItem(
            title: "채팅",
            image: Image.chat_E_Icon,
            selectedImage: Image.chat_F_Icon
        )
        
        let myPageVC = MyPageViewController()
        myPageVC.tabBarItem = UITabBarItem(
            title: "나의 당근",
            image: Image.myCarrot_E_Icon,
            selectedImage: Image.myCarrot_F_Icon
        )
        
        viewControllers = [homeVC, townVC , aroundVC , chatVC , myPageVC]
    }
    
    private func setTabbarAppearance(){
        UITabBar.appearance().tintColor = Color.daangnOrange
        UITabBar.appearance().unselectedItemTintColor = Color.daangnBlack1
        
        UITabBarItem.appearance().setTitleTextAttributes([.font: UIFont.systemFont(ofSize: 11, weight: .regular)], for: .normal)
    }
    
    private func makeBorder(){
        tabBar.layer.borderColor = Color.daangnGray1.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
    }
}
