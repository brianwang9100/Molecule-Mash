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

}
-(void) didLoadFromCCB
{
    [super didLoadFromCCB];
    [self setupArray];
    self.levelBasics.levelNumber = 1;
}

-(void) setupArray
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
