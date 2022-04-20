//
//  File.swift
//  CO2-FootPrint
//
//  Created by 이지수 on 2022/04/21.
//

import SwiftUI

let story = mainContents(pages: [
    mainPage( // main
        """
        Welcome to Choose Your Own Story
        🥖🍪Bake Off!🥐🍰
        
        You enter a local baking competition at the county fair 🎪. It’s a beautiful summer day and you are excited! When you enter the room, you look around to see ten identical stations.
        
        Each station is stocked with bowls of different sizes, spatulas, spoons, and a standing mixer. You are the third to arrive, so there are many stations still available. Where do you sit?
        """,
        choices: [
            Choice(text: "Game start 👉🏻", destination: 1),
            Choice(text: "How to Game 🧐", destination: 1),
            Choice(text: "Why strive for carbon neutrality?", destination: 2),
        ]
    )
])

