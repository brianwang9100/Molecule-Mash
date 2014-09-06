

//
//  Level3.m
//  MoleculeMash
//
//  Created by Brian Wang on 9/6/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Level3.h"

@implementation Level3
{
    LevelBasics *_levelBasics;
}
-(void) didLoadFromCCB
{
    [super didLoadFromCCB];
    self.levelNumber = 3;
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
