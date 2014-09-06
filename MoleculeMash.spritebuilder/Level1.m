//
//  Level1.m
//  MoleculeMash
//
//  Created by Brian Wang on 9/6/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Level1.h"

@implementation Level1

-(void) didLoadFromCCB
{
    [super didLoadFromCCB];
    self.levelNumber = 1;
    self.totalNumberOfObjectives = 3;
}

-(void) setupArrays
{
    self.objectiveFinalMolecule = [NSMutableArray arrayWithObjects: @"Diatomic Nitrogen", @"Diatomic Oxygen", @"H2O", nil];

}
@end
