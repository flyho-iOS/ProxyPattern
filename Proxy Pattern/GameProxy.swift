//
//  GameProxy.swift
//  Proxy Pattern
//
//  Created by fly on 2017/12/15.
//  Copyright © 2017年 flyho. All rights reserved.
//

import Cocoa


class GameProxy: NSObject , PlayGameDelegate {
    
    //代练玩游戏的水平
    private var gameLevel = 0
    //代练游戏账号的段位
    var accountLevel = 0
    
    public init(gl:Int) {
        super.init()
        gameLevel = gl
    }
    //实现协议方法
    func playGameForPlayer(player: Player) {
        player.accountLevel = gameLevel
        print("代练：已为\(player.playerName)代练到段位\(player.accountLevel)")
    }
}
