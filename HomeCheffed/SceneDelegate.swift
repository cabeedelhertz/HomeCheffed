//
//  SceneDelegate.swift
//  HomeCheffed
//
//  Created by Cabe Edelhertz on 12/14/24.
//

//import UIKit
//import FirebaseAuth
//
//class SceneDelegate: UIResponder, UIWindowSceneDelegate {
//  var window: UIWindow?
//
//  lazy var authNavController: UINavigationController = {
//    let navController = UINavigationController(rootViewController: AuthViewController())
//    navController.view.backgroundColor = .systemBackground
//    return navController
//  }()
//
//  lazy var userNavController: UINavigationController = {
//    let navController = UINavigationController(rootViewController: UserViewController())
//    navController.view.backgroundColor = .systemBackground
//    return navController
//  }()
//
//  lazy var tabBarController: UITabBarController = {
//    let tabBarController = UITabBarController()
//    tabBarController.delegate = tabBarController
//    tabBarController.view.backgroundColor = .systemBackground
//    return tabBarController
//  }()
//
//  func scene(_ scene: UIScene, willConnectTo session: UISceneSession,
//             options connectionOptions: UIScene.ConnectionOptions) {
//    guard let windowScene = (scene as? UIWindowScene) else { return }
//
//    configureControllers()
//
//    window = UIWindow(windowScene: windowScene)
//    window?.rootViewController = tabBarController
//    window?.makeKeyAndVisible()
//  }
//
//  // Implementing this delegate method is needed when swizzling is disabled.
//  // Without it, reCAPTCHA's login view controller will not dismiss.
//  func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
//    for urlContext in URLContexts {
//      let url = urlContext.url
//      _ = Auth.auth().canHandle(url)
//    }
//
//    // URL not auth related; it should be handled separately.
//  }
//
//  func scene(_ scene: UIScene, continue userActivity: NSUserActivity) {
//    if let incomingURL = userActivity.webpageURL {
//      handleIncomingDynamicLink(incomingURL)
//    }
//  }
//
//  // MARK: - Firebase 🔥
//
//  private func handleIncomingDynamicLink(_ incomingURL: URL) {
//    let link = incomingURL.absoluteString
//
//    if Auth.auth().isSignIn(withEmailLink: link) {
//      // Save the link as it will be used in the next step to complete login
//      UserDefaults.standard.set(link, forKey: "Link")
//
//      // Post a notification to the PasswordlessViewController to resume authentication
//      NotificationCenter.default
//        .post(Notification(name: Notification.Name("PasswordlessEmailNotificationSuccess")))
//    }
//  }
//
//  // MARK: - Private Helpers
//
//  private func configureControllers() {
//    authNavController.configureTabBar(
//      title: "Authentication",
//      systemImageName: "person.crop.circle.fill.badge.plus"
//    )
//    userNavController.configureTabBar(title: "Current User", systemImageName: "person.fill")
//    tabBarController.viewControllers = [authNavController, userNavController]
//  }
//}
