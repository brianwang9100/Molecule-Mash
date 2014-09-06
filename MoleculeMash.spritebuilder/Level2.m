//
//  Level2.m
//  MoleculeMash
//
//  Created by Brian Wang on 9/6/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Level2.h"

@implementation Level2
{
    LevelBasics *_levelBasics;
}
-(void) didLoadFromCCB
{
    [super didLoadFromCCB];
    self.levelNumber = 2;
}

-(void) setupArrays
{
    self.objectiveFinalMolecule = [NSMutableArray arrayWithObjects: @"Diatomic Nitrogen", @"Diatomic Oxygen", @"H2O", nil];
    
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
