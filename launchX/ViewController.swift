//
//  ViewController.swift
//  launchX
//
//  Created by Jonathan Chua on 10/22/17.
//  Copyright © 2017 Jonathan Chua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        backgroundImageView.addSubview(blurEffectView)

        loadAPIData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: URL Session
    ///////////////////

    let session: URLSession = .shared

    func loadAPIData() {
        let url = URL(string: "https://api.spacexdata.com/v1/launches/upcoming")!
        let task = session.dataTask(with: url) { (data, response, error) in
            guard error == nil else { print("Encountered Error: \(error!)"); return }

            let decoder = JSONDecoder()
            let launches = try! decoder.decode([Launch].self, from: data!)
            print(launches)
        }
        task.resume()
    }


}

