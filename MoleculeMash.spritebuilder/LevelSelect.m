//
//  LevelSelect.m
//  MoleculeMash
//
//  Created by Mitchell Malinin on 9/6/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "LevelSelect.h"
#import "Level.h"

@implementation LevelSelect
int _someNumber;
-(void) didLoadFromCCB
{
    
}

-(void) changeLevel: (id) sender
{
    CCButton *selectedButton = (CCButton *)sender;
    int levelNumber = [selectedButton.name intValue];
    Level *levelScene = (Level *)[CCBReader loadAsScene: [NSString stringWithFormat:@"Level%i", levelNumber]];
    [[CCDirector sharedDirector]  replaceScene: levelScene];
}
@end
