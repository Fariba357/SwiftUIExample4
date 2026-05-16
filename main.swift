import UIKit
// AppDelegate sets up the window and root view controller
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        return true
    }
}
// ViewController with label and button
class ViewController: UIViewController {
    let label = UILabel()
    let button = UIButton(type: .system)
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        label.text = "Tap the button"
        label.textAlignment = .center
        label.frame = CGRect(x: 50, y: 200, width: 300, height: 50)
        view.addSubview(label)
        button.setTitle("Click Me", for: .normal)
        button.frame = CGRect(x: 100, y: 300, width: 200, height: 50)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(button)
    }
    @objc func buttonTapped() {
        label.text = "Hello from UIKit!"
        print("Button tapped → Hello from UIKit!") // console output
    }
}
// UIApplicationMain entry point
UIApplicationMain(
    CommandLine.argc,
    CommandLine.unsafeArgv,
    nil,
    NSStringFromClass(AppDelegate.self)
)
