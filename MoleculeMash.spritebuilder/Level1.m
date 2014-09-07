//
//  Level1.m
//  MoleculeMash
//
//  Created by Brian Wang on 9/6/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Level1.h"
#import "PostGamePopUp.h"
@implementation Level1
{
    BOOL _transitionMode;
    BOOL _resetTransitionMode;
    GenericLabel * _genericLabel;
    PostGamePopUp *_postGamePopUp;
}
-(void) didLoadFromCCB
{
    [super didLoadFromCCB];
    [self setupArray];
    self.currentNumberOfAtoms = 0;
    self.levelBasics.levelNumber = 1;
    self.totalNumberOfObjectives = 3;
    _transitionMode = NO;
    _resetTransitionMode = NO;
    _postGamePopUp.level = self;
    self.levelNumber = 1;
    
    [self performSelector:@selector(startGame) withObject:nil afterDelay:1.5];
}

-(void) startGame
{
    self.gameStarted = YES;
    self.levelBasics.levelTitleLabel.string = @"Level 1 - Acids";
    [self objective1];
}

-(void) setupArray
{
    self.objectiveFinalMolecule = [NSMutableArray arrayWithObjects: @"Hydrochloric Acid (HCl)", @"Hydrobromic Acid (_Br)", @"Hydrofluoric Acid (_F)", nil];
    self.objectiveFinalMoleculeForm = [NSMutableArray arrayWithObjects: @"HCl", @"_Br", @"_F", nil];
    
}

-(void) objective1
{
    _transitionMode = NO;
    self.levelBasics.objectiveLabel.string = [self.objectiveFinalMolecule objectAtIndex:0];
    self.backgroundLabel.string = [self.objectiveFinalMoleculeForm objectAtIndex:0];
    self.maxNumberOfAtoms = 2;
    self.currentObjectiveNumber = 1;
    
    self.arrow1 = [CCBReader load: @"Arrow"];
    self.arrow2 = [CCBReader load: @"ArrowDown"];
    self.arrow1.position = ccp(40, self.contentSizeInPoints.height*.90);
    self.arrow2.position = ccp(40, self.contentSizeInPoints.height*.10);
    [self addChild: self.arrow1];
    [self addChild: self.arrow2];
    
    [self loadGenericMessage:@"Tap the elements on the side\n to make the given atom!" withPosition:ccp(self.grid.contentSize.width*.5, self.grid.contentSize.height*.15)];
    [self performSelector:@selector(removeGenericLabel) withObject:nil afterDelay:7];
}
-(void) endObjective1
{
    [_genericLabel removeFromParent];
    _genericLabel = nil;
    _transitionMode = YES;
//    id moveTo = [CCActionMoveTo actionWithDuration:2 position:ccp(self.grid.contentSize.width*.5, self.grid.contentSize.height*.5)];
//    id moveToWithEase = [CCActionEaseInOut actionWithAction:moveTo];
//    
//    for (id e in self.listOfAtoms)
//    {
//        [e runAction: moveToWithEase];
//    }
    self.userInteractionEnabled = NO;
    [self performSelector:@selector(removeAllAtoms) withObject:nil afterDelay: 2];
    [self performSelector:@selector(loadObjectiveMolecule:) withObject:@"AllMolecules/HydroChloricAcid" afterDelay: 2];
    [self performSelector:@selector(loadGenericMessage:) withObject:@"Easy Right?" afterDelay: 3];
    [self performSelector:@selector(objective2) withObject:nil afterDelay: 7];
}

-(void) loadObjectiveMolecule: (NSString*) moleculeString
{
    self.currentMolecule = [CCBReader load: moleculeString];
    self.currentMolecule.position = ccp(self.grid.contentSize.width*.5, self.grid.contentSize.height*.5);
    [self.grid addChild: self.currentMolecule];
    [self loadParticleExplosionWithParticleNameFromGrid:@"BigParticles" onObject: self.currentMolecule];
    [self loadParticleExplosionWithParticleNameFromGrid:@"Particles2" onObject: self.currentMolecule];
}

-(void) loadGenericMessage: (NSString *) message
{
    _genericLabel = (GenericLabel *)[CCBReader load:@"GenericLabel"];
    _genericLabel.label.string = message;
    _genericLabel.position = ccp(self.grid.contentSize.width*.5, self.grid.contentSize.height*.70);
    _genericLabel.opacity = 0;
    [self.grid addChild:_genericLabel];
    
    id labelFadeIn = [CCActionFadeIn actionWithDuration:1];
    [_genericLabel runAction: labelFadeIn];
}

-(void) loadGenericMessage: (NSString *) message withPosition: (CGPoint) position
{
    _genericLabel = (GenericLabel *)[CCBReader load:@"GenericLabel"];
    _genericLabel.label.string = message;
    _genericLabel.position = position;
    _genericLabel.opacity = 0;
    [self.grid addChild:_genericLabel];
    
    id labelFadeIn = [CCActionFadeIn actionWithDuration:1];
    [_genericLabel runAction: labelFadeIn];
}
-(void) objective2
{
    self.userInteractionEnabled = TRUE;
    _transitionMode = NO;
    [self.currentMolecule removeFromParent];
    self.currentMolecule = nil;
    [_genericLabel removeFromParent];
    _genericLabel = nil;
    self.levelBasics.objectiveLabel.string = [self.objectiveFinalMolecule objectAtIndex:1];
    self.backgroundLabel.string = [self.objectiveFinalMoleculeForm objectAtIndex:1];
    self.currentNumberOfAtoms = 0;
    self.maxNumberOfAtoms = 2;
    self.currentObjectiveNumber = 2;
    self.nextXvalue = 50;
    self.nextYvalue = 75;
    
    [self loadGenericMessage:@"Fill in the blank!" withPosition:ccp(self.grid.contentSize.width*.5, self.grid.contentSize.height*.15)];
    [self performSelector:@selector(removeGenericLabel) withObject:nil afterDelay:7];
}
-(void) endObjective2
{
    [_genericLabel removeFromParent];
    _genericLabel = nil;
    _transitionMode = YES;
//    id moveTo = [CCActionMoveTo actionWithDuration:1 position:ccp(self.grid.contentSize.width*.5, self.grid.contentSize.height*.5)];
//    id moveToWithEase = [CCActionEaseInOut actionWithAction:moveTo];
//    for (CCNode *e in self.listOfAtoms)
//    {
//        [e runAction: moveToWithEase];
//    }
    self.userInteractionEnabled = NO;

    [self performSelector:@selector(removeAllAtoms) withObject:nil afterDelay: 1];
    [self performSelector:@selector(loadObjectiveMolecule:) withObject:@"AllMolecules/HydroBromicAcid" afterDelay: 1];
    [self performSelector:@selector(loadGenericMessage:) withObject:@"Acids usually have a single\n proton, or Hydrogen atom" afterDelay: 3];
    [self performSelector:@selector(objective3) withObject:nil afterDelay: 7];

}

-(void) objective3
{
    self.userInteractionEnabled = YES;
    _transitionMode = NO;
    [self.currentMolecule removeFromParent];
    self.currentMolecule = nil;
    [_genericLabel removeFromParent];
    _genericLabel = nil;
    
    self.levelBasics.objectiveLabel.string = [self.objectiveFinalMolecule objectAtIndex:2];
    self.backgroundLabel.string = [self.objectiveFinalMoleculeForm objectAtIndex:2];
    self.currentNumberOfAtoms = 0;
    self.maxNumberOfAtoms = 2;
    self.currentObjectiveNumber = 3;
    self.nextXvalue = 50;
    self.nextYvalue = 75;
}

-(void) endObjective3
{
    [_genericLabel removeFromParent];
    _genericLabel = nil;
    _transitionMode = YES;
//    id moveTo = [CCActionMoveTo actionWithDuration:1 position:ccp(self.grid.contentSize.width*.5, self.grid.contentSize.height*.5)];
//    id moveToWithEase = [CCActionEaseInOut actionWithAction:moveTo];
//    for (CCNode *e in self.listOfAtoms)
//    {
//        [e runAction: moveToWithEase];
//    }
    self.userInteractionEnabled = NO;

    [self performSelector:@selector(removeAllAtoms) withObject:nil afterDelay: 1];
    [self performSelector:@selector(loadObjectiveMolecule:) withObject:@"AllMolecules/HydroFluoricAcid" afterDelay: 1];
    [self performSelector:@selector(loadGenericMessage:) withObject:@"Opposite of H+ is -OH!" afterDelay: 3];
    [self performSelector:@selector(endGame) withObject:nil afterDelay: 7];
}

-(void) endGame
{
    [self.currentMolecule removeFromParent];
    self.currentMolecule = nil;
    [_genericLabel removeFromParent];
    _genericLabel = nil;
    self.backgroundLabel.string = @"";
    self.levelBasics.levelTitleLabel.string = @"";
    self.levelBasics.objectiveLabel.string = @"";
    
    _postGamePopUp = (PostGamePopUp *)[CCBReader load:@"LevelComplete"];
    _postGamePopUp.position = ccp(self.contentSizeInPoints.width*.5,self.contentSizeInPoints.height*.5);
    [self addChild:_postGamePopUp];
    
    _postGamePopUp.timerLabel.string = [NSString stringWithFormat:@"%f", self.timeTaken];
    _postGamePopUp.time = (float) self.timeTaken;
    _postGamePopUp.messageLabel.string = @"Remember, acidic molecules usually\n involve one hydrogen ion!\n ex: HCl, HBr, HF";
    _postGamePopUp.beginAnimation = YES;
    
}

-(void)update:(CCTime)delta
{
    [super update:delta];
    
    if(!_transitionMode)
    {
        self.timeTaken += delta;
        if (self.currentNumberOfAtoms == self.maxNumberOfAtoms)
        {
            switch (self.currentObjectiveNumber)
            {
                case 1:
                {
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
                    
                    if (numberOfChlorines == 1 && numberOfHydrogens)
                    {
                        [self endObjective1];
                        return;
                    }
                }
                    break;
                case 2:
                {
                    int numberOfHydrogens = 0;
                    int numberOfBromines = 0;
                    for (id e in self.listOfAtoms)
                    {
                        if ([e isKindOfClass:[Hydrogen class]])
                        {
                            numberOfHydrogens++;
                        }
                        else if ([e isKindOfClass:[Bromine class]])
                        {
                            numberOfBromines++;
                        }
                    }
                    
                    if (numberOfBromines == 1 && numberOfHydrogens)
                    {
                        [self endObjective2];
                        return;
                    }
                }
                    break;
                case 3:
                {
                    int numberOfHydrogens = 0;
                    int numberOfFluorines = 0;
                    for (id e in self.listOfAtoms)
                    {
                        if ([e isKindOfClass:[Hydrogen class]])
                        {
                            numberOfHydrogens++;
                        }
                        else if ([e isKindOfClass:[Fluorine class]])
                        {
                            numberOfFluorines++;
                        }
                    }
                    
                    if (numberOfFluorines == 1 && numberOfHydrogens)
                    {
                        [self endObjective3];
                        return;
                    }
                }
                    break;
            }
        }
        else if (self.currentNumberOfAtoms >= self.maxNumberOfAtoms && !_resetTransitionMode)
        {
            _genericLabel = nil;
            _genericLabel = (GenericLabel *)[CCBReader load:@"GenericLabel"];
            _genericLabel.label.string = @"WRONG COMBINATION!";
            _genericLabel.position = ccp(self.contentSizeInPoints.width*.5, self.contentSizeInPoints.height*1.2);
            id labelMoveTo = [CCActionMoveTo actionWithDuration:1.5  position: ccp(self.contentSizeInPoints.width*.5, self.contentSizeInPoints.height*.5)];
            id labelBounceOut = [CCActionEaseElasticInOut actionWithAction: labelMoveTo period: .4];
            [self addChild: _genericLabel];
            [ _genericLabel runAction: labelBounceOut];
            
            _resetTransitionMode = YES;
            self.userInteractionEnabled = FALSE;
            [self performSelector:@selector(removeAllAtoms) withObject:nil afterDelay:4];
            [self performSelector:@selector(removeGenericLabel) withObject:nil afterDelay:4];
            
            self.nextXvalue = 50;
            self.nextYvalue = 75;
            
        
        }
    }
}

-(void) removeAllAtoms
{
    [super removeAllAtoms];
}

-(void) removeGenericLabel
{
    if ( _genericLabel != nil)
    {
        [ _genericLabel removeFromParent];
         _genericLabel = nil;
    }
    _resetTransitionMode = NO;
    self.userInteractionEnabled = TRUE;
}

-(void) restart
{
    CCScene *mainScene = [CCBReader loadAsScene:[NSString stringWithFormat: @"Level%i",( self.levelNumber) ]];
    CCTransition *transition = [CCTransition transitionCrossFadeWithDuration:.5f];
    [[CCDirector sharedDirector] replaceScene:mainScene withTransition:transition];
    
}

-(void) quit
{
    CCScene *mainScene = [CCBReader loadAsScene:@"MainScene"];
    CCTransition *transition = [CCTransition transitionCrossFadeWithDuration:.5f];
    [[CCDirector sharedDirector] replaceScene:mainScene withTransition:transition];
}

-(void) levelSelect
{
    CCScene *mainScene = [CCBReader loadAsScene:[NSString stringWithFormat: @"Level%i", (self.levelNumber+1 )]];
    CCTransition *transition = [CCTransition transitionCrossFadeWithDuration:.5f];
    [[CCDirector sharedDirector] replaceScene:mainScene withTransition:transition];
}

-(void) nextLevel
{
    CCScene *mainScene = [CCBReader loadAsScene:@"LevelSelect"];
    CCTransition *transition = [CCTransition transitionCrossFadeWithDuration:.5f];
    [[CCDirector sharedDirector] replaceScene:mainScene withTransition:transition];
}
@end
