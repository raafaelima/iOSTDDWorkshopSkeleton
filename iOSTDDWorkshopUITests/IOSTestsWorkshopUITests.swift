//
// IOSTestsWorkshopUITests.swift
// IOSTestsWorkshop
//
// Created by Rafael Correia on 22/05/18.
//Copyright © 2018 Thoughworks. All rights reserved.
//

import Foundation
import Quick
import Nimble

class IOSTestsWorkshopUITests: UIQuickSpec {

    override func spec() {
        var app: XCUIApplication!

        beforeEach {
            app = XCUIApplication()
            app.launchArguments.append("reset")
            app.launch()
        }

        describe("GameViewController") {
            fit("should appear score button") {
                expect(app.buttons["scoreButton"].firstMatch.exists).to(beTrue())
            }
        }
    }
}
