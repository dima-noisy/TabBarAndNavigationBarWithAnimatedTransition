import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBarApperiance()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        /*
         example of simple modal navigation
        let vc = ViewController()
        vc.view.backgroundColor = UIColor.random()
        present(vc, animated: true)
         */
    }
    
    private func setupNavigationBarApperiance() {
        let navigationBarApperiance = UINavigationBarAppearance()
        navigationBarApperiance.configureWithDefaultBackground()
        navigationBarApperiance.backgroundColor = .systemYellow
        navigationBarApperiance.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.systemBlue
        ]
        
        navigationItem.standardAppearance = navigationBarApperiance
        navigationItem.compactAppearance = navigationBarApperiance
        navigationItem.scrollEdgeAppearance = navigationBarApperiance
        
        navigationItem.leftBarButtonItem?.tintColor = .systemBackground
        navigationItem.rightBarButtonItem?.tintColor = .systemBackground
        
        navigationController?.navigationBar.tintColor = .systemBackground
        navigationController?.navigationBar.isTranslucent = false
        
        title = "Test"
        navigationItem.prompt = "Navigation prompts appear at the top"
    }
}
