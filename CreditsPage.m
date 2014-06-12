//
//  CreditsPage.m
//  016
//
//  Created by Patrick Cleary on 6/10/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CreditsPage.h"

@implementation CreditsPage



- (void)BacktoStartPageButton {
    CCLOG(@"Back button pressed");
    CCScene *StartPage = [CCBReader loadAsScene:@"StartPage"];
    [[CCDirector sharedDirector] replaceScene:StartPage];
}

@end
