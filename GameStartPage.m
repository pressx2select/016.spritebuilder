//
//  GameStartPage.m
//  016
//
//  Created by Patrick Cleary on 6/11/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "GameStartPage.h"

@implementation GameStartPage


{
    CCPhysicsNode *_physicsNode;
    CCSprite *_ball;
    CCSprite *_hero;
    CCNode *_endwall;
    CCNode *_ground;
}
- (void)didLoadFromCCB {
    self.userInteractionEnabled = TRUE;
    _physicsNode.collisionDelegate = self;
    
    _ball.physicsBody.collisionType = @"ball";
    _hero.physicsBody.collisionType = @"hero";
    _endwall.physicsBody.collisionType = @"endwall";
    _ground.physicsBody.collisionType = @"ground";
}

#pragma Jump Button
//- (void)_jumpButton
//{
//    {
//        CCLOG(@"Jump button pressed");
////        _hero.physicsBody.velocity = ccp(0,10);
//        [_hero.physicsBody applyImpulse:ccp(0, 200)];
//    }
//}





//
//- (void)_jumpButton
//{
//    if (
//        -(BOOL)ccPhysicsCollisionBegin:(CCPhysicsCollisionPair *)pair hero:(CCNode *)hero ground:(CCNode *)ground
//    {
//        //    [_ground removeFromParent];
//        return TRUE;
//    }
//        
//        ) {
//        CCLOG(@"The hero is grounded");
//    }
//    
//    
////        CCLOG(@"Jump button pressed");
//    
//}
//
//
//
//
//-(BOOL)ccPhysicsCollisionBegin:(CCPhysicsCollisionPair *)pair hero:(CCNode *)hero ground:(CCNode *)ground
//{
//    CCLOG(@"The hero is grounded");
//    //    [_ground removeFromParent];
//    return TRUE;
//}










#pragma mark - CCPhysicsCollisionDelegate

-(BOOL)ccPhysicsCollisionBegin:(CCPhysicsCollisionPair *)pair hero:(CCNode *)hero ball:(CCNode *)ball {
    CCLOG(@"The ball collided with the hero!");
//    [_ground removeFromParent];
    
    CCScene *CreditsPage = [CCBReader loadAsScene:@"CreditsPage"];
    [[CCDirector sharedDirector] replaceScene:CreditsPage];
    return TRUE;
}


-(BOOL)ccPhysicsCollisionBegin:(CCPhysicsCollisionPair *)pair endwall:(CCNode *)endwall ball:(CCNode *)ball {
    CCLOG(@"Something FINALLY collided!");
    //    [_ground removeFromParent];
    return TRUE;
}


- (void)toCreditsPageButton {
    CCLOG(@"Credits button pressed");
    CCScene *CreditsPage = [CCBReader loadAsScene:@"CreditsPage"];
    [[CCDirector sharedDirector] replaceScene:CreditsPage];
}


@end
