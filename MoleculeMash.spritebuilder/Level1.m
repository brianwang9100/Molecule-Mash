//
//  Level1.m
//  MoleculeMash
//
//  Created by Brian Wang on 9/6/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Level1.h"

@implementation Level1
{
    LevelBasics *_levelBasics;
}
-(void) didLoadFromCCB
{
    [super didLoadFromCCB];
    _levelBasics.levelNumber = 1;
}

-(void) setupArrays
{
    self.objectiveFinalMolecule = [NSMutableArray arrayWithObjects: @"Diatomic Nitrogen", @"Diatomic Oxygen", @"H2O", nil];

}



//-(void) pause
//{
//    [super pause];
//}
//
//-(void) restart
//{
//    [super restart];
//}
//
//-(void) quit
//{
//    [super quit];
//}

@end
