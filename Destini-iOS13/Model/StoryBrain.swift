//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    let arrStories = [
        //0
        Story(
            title: "車子在偏僻的郊外的撞毀了。\n背著背包的你決定攔下一台車。 一輛路過的車子停在你旁邊。\n駕駛為你打開副駕車門，問你需要搭車嗎？",
            choice1: "是的，謝謝你",
            choice1Destination: 2,
            choice2: "最好先問問他要不要付錢",
            choice2Destination: 1
        ),
        //1
        Story(
            title: "他自在地點點頭，對這個問題毫不在意。",
            choice1: "至少他願意載我",
            choice1Destination: 2,
            choice2: "算了，我還是用走的好了",
            choice2Destination: 3
        ),
        //2
        Story(
            title: "關上車門，你開始聊自己如何釋放壓力。\n他的臉色變得越來越蒼白。\n他要你打開背包。\n背包裡面，你發現一把染血的刀、兩根斷掉的手指和一片紅髮艾德的 CD。\n他想把手伸進背包。",
            choice1: "我愛紅髮艾德！把 CD 拿給他",
            choice1Destination: 5,
            choice2: "拼個你死我活！你拿起刀刺向他",
            choice2Destination: 4
        ),
        //3
        Story(
            title: "你白癡嗎！你知道這裡有多偏僻嗎？\n你聽到他的嘲笑，下意識手伸進背包拿出刀子一陣猛砍\n對方血流如注暈倒在駕駛座上，車子滑下斜坡撞毀了。",
            choice1: "下車繼續往前走",
            choice1Destination: 0,
            choice2: "下車繼續往前走",
            choice2Destination: 0
        ),
        //4
        Story(
            title: "對方血流如注暈倒在駕駛座上，踏著煞車的右腳鬆開了\n你只能趕緊抓著方向盤，但車子還是滑下了山坡，撞毀在偏僻的郊區。",
            choice1: "下車繼續往前走",
            choice1Destination: 0,
            choice2: "下車繼續往前走",
            choice2Destination: 0
        ),
        //5
        Story(
            title: "對方發抖著開車，紅髮艾德的歌越來越大聲。\n你感覺腦袋快要炸開了，無意識的手伸進背包拿出刀子一陣猛砍\n對方血流如注暈倒在駕駛座上，車子打滑後撞毀在路旁。",
            choice1: "下車繼續往前走",
            choice1Destination: 0,
            choice2: "下車繼續往前走",
            choice2Destination: 0
        )
    ]
    
    func nextStory(_ userChoice: String) -> Int {
        let stories = arrStories
        switch userChoice {
        case stories[0].choice1:
            return 2
        case stories[0].choice2:
            return 1
        case stories[1].choice1:
            return 2
        case stories[1].choice2:
            return 3
        case stories[2].choice1:
            return 5
        case stories[2].choice1:
            return 4
        case stories[3].choice1:
            return 0
        default:
            return 0
        }
        
    }
}
