//
//  PlayGameDelegate.swift
//  Proxy Pattern
//
//  Created by fly on 2017/12/3.
//  Copyright © 2017年 flyho. All rights reserved.
//

import Foundation

 protocol PlayGameDelegate:NSObjectProtocol {
    //给玩家代练
    
    func playGameForPlayer(player:Player)
    
}
