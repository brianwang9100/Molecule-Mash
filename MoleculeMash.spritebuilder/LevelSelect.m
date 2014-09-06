//
//  LevelSelect.m
//  MoleculeMash
//
//  Created by Mitchell Malinin on 9/6/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "LevelSelect.h"
#import "MainScene.h"

@implementation LevelSelect
int _someNumber;
-(void) didLoadFromCCB
{
    
}

-(void) changeLevel: (id) sender
{
    CCButton *selectedButton = (CCButton *)sender;
    int levelNumber = [selectedButton.name intValue];
    MainScene *levelScene = (MainScene *)[CCBReader loadAsScene: @"MainScene"];
    [[CCDirector sharedDirector] replaceScene: levelScene];
    
//    levelScene.levelNumber = levelNumber;
}
@end
