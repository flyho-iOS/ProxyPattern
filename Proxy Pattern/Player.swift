//
//  Player.swift
//  Proxy Pattern
//
//  Created by fly on 2017/12/3.
//  Copyright © 2017年 flyho. All rights reserved.
//

import Cocoa

class Player: NSObject {
    
    public var playerName = ""
    //玩家玩游戏的水平
    //1:青铜 2:白银 3:黄金 4:铂金 5:钻石 。。。
    var gameLevel = 0
    //玩家游戏账号的段位
    var accountLevel = 0
    //找代练
    weak var delegate : PlayGameDelegate?
    //构造方法
    public init(name:NSString,gl:Int) {
        super.init()
        playerName = name as String
        gameLevel = gl
        playGame()
    }
    
    func playGame() {
        //怎样的水平就该是怎样的段位囖
        accountLevel = gameLevel
    }
    
    public func levelUp() {
        print("鹏鹏：拿一个月饭钱找代练去")
        delegate?.playGameForPlayer(player: self)
    }
}
