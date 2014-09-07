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
    
}
-(void) didLoadFromCCB
{
    [super didLoadFromCCB];
    [self setupArray];
    self.levelNumber = 2;
}

-(void) setupArray
{
    self.objectiveFinalMolecule = [NSMutableArray arrayWithObjects: @"Diatomic Nitrogen", @"Diatomic Oxygen", @"H2O", nil];
}

@end
