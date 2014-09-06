//
//  startScene.m
//  MoleculeMash
//
//  Created by Justin Matsnev on 9/6/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "startScene.h"

@implementation startScene


-(void) play {
    CCScene *mainScene = [CCBReader loadAsScene:@"LevelSelect"];
    CCTransition *transition = [CCTransition transitionCrossFadeWithDuration:.5f];
    [[CCDirector sharedDirector] replaceScene:mainScene withTransition:transition];
}


@end
