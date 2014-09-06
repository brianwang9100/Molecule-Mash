//
//  Level7.m
//  MoleculeMash
//
//  Created by Brian Wang on 9/6/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Level7.h"

@implementation Level7
{
    LevelBasics *_levelBasics;
}
-(void) didLoadFromCCB
{
    [super didLoadFromCCB];
    self.levelNumber = 7;
}

-(void) pause
{
    [super pause];
}

-(void) restart
{
    [super restart];
}

-(void) quit
{
    [super quit];
}
@end
