//
//  main.swift
//  Proxy Pattern
//
//  Created by fly on 2017/12/3.
//  Copyright © 2017年 flyho. All rights reserved.
//

import Foundation

//上帝创造了鹏鹏,青铜渣渣
let pengpeng = Player.init(name: "鹏鹏", gl: 1)
//lol的火爆，代练小强应运而生，钻石大神
let xiaoqiang = GameProxy.init(gl:5)
//鹏鹏找到代练小强
pengpeng.delegate = xiaoqiang
//鹏鹏的账号开始升级咯
pengpeng.levelUp()

