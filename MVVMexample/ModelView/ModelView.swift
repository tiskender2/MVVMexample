//
//  ModelView.swift
//  MVVMexample
//
//  Created by tolga iskender on 9.08.2018.
//  Copyright © 2018 tolga iskender. All rights reserved.
//

import UIKit

class ModelView {
    
    private var footballTeams: FootballTeams
    
    init(name: String, backNumber: Int, team: String) {
        self.footballTeams = FootballTeams(name: name, backNumber: backNumber, team: team)
    }
    
    var playerName : String {
        return footballTeams.name
    }
    
    var playerBackNumber: Int {
        return footballTeams.backNumber
    }
    
    var playerTeam: String {
        return footballTeams.team
    }
    
    var teamInfo: String {
        return "\(playerName) is \(playerTeam) footballer with number \(playerBackNumber)"
    }
}
