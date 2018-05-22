//
// UIQuickSpec.swift
// IOSTestsWorkshop
//
// Created by Rafael Correia on 22/05/18.
//Copyright © 2018 Thoughworks. All rights reserved.
//

import Quick
import Nimble
import Foundation

class UIQuickSpec: QuickSpec {

    func waitForElementToAppear(element: XCUIElement, timeout: TimeInterval = 15, file: String = #file, line: Int = #line) {
        let existsPredicate = NSPredicate(format: "exists == true")

        expectation(for: existsPredicate, evaluatedWith: element, handler: nil)

        waitForExpectations(timeout: timeout) { (error) -> Void in
            if error != nil {
                let message = "Failed to find \(element) after \(timeout) seconds."
                self.recordFailure(withDescription: message, inFile: file, atLine: line, expected: true)
            }
        }
    }
}
