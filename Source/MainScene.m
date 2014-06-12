//
//  MainScene.m
//  PROJECTNAME
//
//  Created by Viktor on 10/10/13.
//  Copyright (c) 2013 Apportable. All rights reserved.
//

#import "MainScene.h"

@implementation MainScene


- (void)toStartPageButton {
    CCLOG(@"test01 button pressed");
    CCScene *StartPage = [CCBReader loadAsScene:@"StartPage"];
    [[CCDirector sharedDirector] replaceScene:StartPage];
}
@end
