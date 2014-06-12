//
//  StartPage.m
//  016
//
//  Created by Patrick Cleary on 6/10/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import "StartPage.h"


@implementation StartPage

//{
//    CCPhysicsNode *_physicsNode;
//}

- (void)toCreditsPageButton {
    CCLOG(@"Credits button pressed");
    CCScene *CreditsPage = [CCBReader loadAsScene:@"CreditsPage"];
    [[CCDirector sharedDirector] replaceScene:CreditsPage];
}


- (void)BacktoMainPageButton {
    CCLOG(@"Credits button pressed");
    CCScene *MainScene = [CCBReader loadAsScene:@"MainScene"];
    [[CCDirector sharedDirector] replaceScene:MainScene];
}

- (void)toGameStartPageButton {
    CCLOG(@"Start Game button pressed");
    CCScene *GameStartPage = [CCBReader loadAsScene:@"GameStartPage"];
    [[CCDirector sharedDirector] replaceScene:GameStartPage];
}

@end
