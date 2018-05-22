//
// GameViewController.swift
// IOSTestsWorkshop
//
// Created by Rafael Correia on 22/05/18.
//Copyright © 2018 Thoughworks. All rights reserved.
//

import Foundation
import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var numbers: UIButton!
    @IBOutlet weak var fizz: UIButton!
    @IBOutlet weak var buzz: UIButton!
    @IBOutlet weak var fizzBuzz: UIButton!

    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var timer: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
