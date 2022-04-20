//
//  File.swift
//  CO2-FootPrint
//
//  Created by 이지수 on 2022/04/21.
//

struct mainContents {
    
    let pages: [mainPage]

    subscript(_ pageIndex: Int) -> mainPage {
        return pages[pageIndex]
    }
}

struct mainPage {
    let text: String
    let choices: [Choice]
    
    init(_ text: String, choices: [Choice]) {
        self.text = text
        self.choices = choices
    }
}

struct Choice {
    let text: String
    let destination: Int
}
