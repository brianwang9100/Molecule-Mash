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
    self.totalNumberOfObjectives = 3;
    
    [self objective1];
}

-(void) setupArray
{
    self.objectiveFinalMolecule = [NSMutableArray arrayWithObjects: @"Hydrochloric Acid (HCL)", @"Hydrobromic Acid (HBr)", @"Hydrofluoric Acid (HF)", nil];
}

-(void) objective1
{
    self.maxNumberOfAtoms = 2;
    self.currentObjectiveNumber = 1;
}

-(void) objective2
{
    self.maxNumberOfAtoms = 2;
    self.currentObjectiveNumber = 2;
}

-(void) objective3
{
    self.maxNumberOfAtoms = 2;
    self.currentObjectiveNumber = 3;
}

-(void) endGame
{
    
}

-(void)update:(CCTime)delta
{
    [super update:delta];
    switch (self.currentObjectiveNumber)
    {
        case 1:
            
            break;
        case 2:
            break;
        case 3:
            break;
    }
    
}
@end
