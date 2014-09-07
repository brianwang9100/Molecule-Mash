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
    BOOL _transitionMode;
}
-(void) didLoadFromCCB
{
    [super didLoadFromCCB];
    [self setupArray];
    self.levelBasics.levelNumber = 1;
    self.totalNumberOfObjectives = 3;
    BOOL _transitionMode;
    
    [self performSelector:startGame withObject:nil afterDelay:1.5];
}

-(void) startGame
{
    self.gameStarted = YES;
    [self objective1];
}

-(void) setupArray
{
    self.objectiveFinalMolecule = [NSMutableArray arrayWithObjects: @"Hydrochloric Acid (HCl)", @"Hydrobromic Acid (HBr)", @"Hydrofluoric Acid (HF)", nil];
}

-(void) objective1
{
    self.maxNumberOfAtoms = 2;
    self.currentObjectiveNumber = 1;
}
-(void) endObjective1
{
    
}

-(void) objective2
{
    self.maxNumberOfAtoms = 2;
    self.currentObjectiveNumber = 2;
}
-(void) endObjective2
{
    
}

-(void) objective3
{
    self.maxNumberOfAtoms = 2;
    self.currentObjectiveNumber = 3;
}
-(void) endObjective3
{
    
}
-(void) endGame
{
    
}

-(void)update:(CCTime)delta
{
    [super update:delta];
    if (self.currentNumberOfAtoms == self.maxNumberOfAtoms)
    {
        switch (self.currentObjectiveNumber)
        {
            case 1:
                int numberOfHydrogens = 0;
                int numberOfChlorines = 0;
                for (id e in self.listOfAtoms)
                {
                    if ([e isKindOfClass:[Hydrogen class]])
                    {
                        numberOfHydrogens++;
                    }
                    else if ([e isKindOfClass:[Chlorine class]])
                    {
                        numberOfChlorines++;
                    }
                }
                if (numberOfChlorines == 1 && numberOfHydrogen)
                {
                    [self endObjective1];
                    return;
                }
                break;
            case 2:
                break;
            case 3:
                break;
        }
    }
    else if (self.currentNumberOfAtoms> maxNumberOfAtoms)
    {
        
    }
}
@end
