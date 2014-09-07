//
//  MainScene.m
//  PROJECTNAME
//
//  Created by Viktor on 10/10/13.
//  Copyright (c) 2013 Apportable. All rights reserved.
//

#import "Level.h"
#define ARC4RANDOM_MAX 0x100000000

@implementation Level
{
    GenericLabel *_maxedOutLabel;

}

-(void) didLoadFromCCB
{
    self.userInteractionEnabled = TRUE;
    self.currentObjectiveNumber = 0;
    self.gameStarted = FALSE;
    self.currentNumberOfAtoms = 0;
    self.levelBasics.levelTitleLabel.string = @"";
    self.levelBasics.objectiveLabel.string = @"";
    self.backgroundLabel.string = @"";
    self.didLaunch = NO;
    self.listOfAtoms = [NSMutableArray arrayWithObjects: nil];
    self.timeTaken = 0;
    
    self.nextXvalue = 50;
    self.nextYvalue = 75;
    
    
    self.hydrogenButton = self.levelBasics.hydrogenButton;
    self.lithiumButton = self.levelBasics.lithiumButton;
    self.boronButton = self.levelBasics.boronButton;
    self.carbonButton = self.levelBasics.carbonButton;
    self.oxygenButton = self.levelBasics.oxygenButton;
    self.chlorineButton = self.levelBasics.chlorineButton;
    self.sodiumButton = self.levelBasics.sodiumButton;
    self.phosphorousButton = self.levelBasics.phosphorousButton;
    self.sulfurButton = self.levelBasics.sulfurButton;
    self.bromineButton = self.levelBasics.bromineButton;
    self.rubidiumButton = self.levelBasics.rubidiumButton;
    self.fluorineButton = self.levelBasics.fluorineButton;
    self.nitrogenButton = self.levelBasics.nitrogenButton;
    self.potassiumButton  = self.levelBasics.potassiumButton;
    
}

-(void) update:(CCTime)delta
{
    if (self.gameStarted && !self.didLaunch)
    {
        NSString *atomString;
        
        self.hydrogenButton = self.levelBasics.hydrogenButton;
        self.lithiumButton = self.levelBasics.lithiumButton;
        self.boronButton = self.levelBasics.boronButton;
        self.carbonButton = self.levelBasics.carbonButton;
        self.oxygenButton = self.levelBasics.oxygenButton;
        self.chlorineButton = self.levelBasics.chlorineButton;
        self.sodiumButton = self.levelBasics.sodiumButton;
        self.phosphorousButton = self.levelBasics.phosphorousButton;
        self.sulfurButton = self.levelBasics.sulfurButton;
        self.bromineButton = self.levelBasics.bromineButton;
        self.rubidiumButton = self.levelBasics.rubidiumButton;
        self.fluorineButton = self.levelBasics.fluorineButton;
        self.nitrogenButton = self.levelBasics.nitrogenButton;
        self.potassiumButton  = self.levelBasics.potassiumButton;
        
        if (self.levelBasics.trashTime)
        {
            [self removeAllAtoms];
            self.levelBasics.trashTime = NO;
        }
        if (self.hydrogenButton)
        {
            atomString = @"Hydrogen";
            [self launchAtom: atomString];
            self.levelBasics.scrollView.atomList.hydrogenButton = FALSE;
            self.hydrogenButton = FALSE;
            
        }
        else if (self.lithiumButton)
        {
            atomString = @"Lithium";
            [self launchAtom: atomString];
            self.levelBasics.scrollView.atomList.lithiumButton = FALSE;
            self.lithiumButton = FALSE;
        }
        else if (self.boronButton)
        {
            atomString = @"Boron";
            [self launchAtom: atomString];
            self.levelBasics.scrollView.atomList.boronButton = FALSE;
            self.boronButton = FALSE;
        }
        else if (self.carbonButton)
        {
            atomString = @"Carbon";
            [self launchAtom: atomString];
            self.levelBasics.scrollView.atomList.carbonButton = FALSE;
            self.carbonButton = FALSE;
        }
        else if (self.nitrogenButton)
        {
            atomString = @"Nitrogen";
            [self launchAtom: atomString];
            self.levelBasics.scrollView.atomList.nitrogenButton = FALSE;
            self.nitrogenButton = FALSE;
        }
        else if (self.oxygenButton)
        {
            atomString = @"Oxygen";
            [self launchAtom: atomString];
            self.levelBasics.scrollView.atomList.oxygenButton = FALSE;
            self.oxygenButton = FALSE;
        }
        else if (self.fluorineButton)
        {
            atomString = @"Fluorine";
            [self launchAtom: atomString];
            self.levelBasics.scrollView.atomList.fluorineButton = FALSE;
            self.fluorineButton = FALSE;
        }
        else if (self.sodiumButton)
        {
            atomString = @"Sodium";
            [self launchAtom: atomString];
            self.levelBasics.scrollView.atomList.sodiumButton = FALSE;
            self.sodiumButton = FALSE;
        }
        else if (self.phosphorousButton)
        {
            atomString = @"Phosphorous";
            [self launchAtom: atomString];
            self.levelBasics.scrollView.atomList.phosphorousButton = FALSE;
            self.phosphorousButton = FALSE;
        }
        else if (self.sulfurButton)
        {
            atomString = @"Sulfur";
            [self launchAtom: atomString];
            self.levelBasics.scrollView.atomList.sulfurButton = FALSE;
            self.sulfurButton = FALSE;
        }
        else if (self.chlorineButton)
        {
            atomString = @"Chlorine";
            [self launchAtom: atomString];
            self.levelBasics.scrollView.atomList.chlorineButton = FALSE;
            self.chlorineButton = FALSE;
        }
        else if (self.potassiumButton)
        {
            atomString = @"Potassium";
            [self launchAtom: atomString];
            self.levelBasics.scrollView.atomList.potassiumButton = FALSE;
            self.potassiumButton = FALSE;
        }
        else if (self.bromineButton)
        {
            atomString = @"Bromine";
            [self launchAtom: atomString];
            self.levelBasics.scrollView.atomList.bromineButton = FALSE;
            self.bromineButton = FALSE;
        }
        else if (self.rubidiumButton)
        {
            atomString = @"Rubidium";
            [self launchAtom: atomString];
            self.levelBasics.scrollView.atomList.rubidiumButton = FALSE;
            self.rubidiumButton = FALSE;
        }
    }
}

-(float) randomFloat
{
    float val = (((float)arc4random()/ARC4RANDOM_MAX)* 2 -1)*101;
    return val;
}
-(void) removeAllAtoms
{
    for (id e in _listOfAtoms)
    {
        [e removeFromParent];
        //add particles
    }
    
    [_listOfAtoms removeAllObjects];
    _currentNumberOfAtoms = 0;
}

-(void) addToGrid: (CCNode*) object
{
    object.position = ccp(_nextXvalue, _nextYvalue);
    [_grid addChild: object];
    [self loadParticleExplosionWithParticleNameFromGrid:@"Particles2" onObject:object];
    _nextXvalue += 100;
    
    if (_nextXvalue > _grid.contentSize.width)
    {
        _nextXvalue = 50;
        _nextYvalue += 75;
        if (_nextYvalue >= _grid.contentSize.height)
        {
            _maxedOutLabel = (GenericLabel *)[CCBReader load:@"GenericLabel"];
            _maxedOutLabel.position = ccp(self.contentSizeInPoints.width*.5, self.contentSizeInPoints.height*1.2);
            id labelMoveTo = [CCActionMoveTo actionWithDuration:1.5  position: ccp(self.contentSizeInPoints.width*.5, self.contentSizeInPoints.height*.5)];
            id labelBounceOut = [CCActionEaseElasticInOut actionWithAction: labelMoveTo period: .4];
            [self addChild:_maxedOutLabel];
            [_maxedOutLabel runAction: labelBounceOut];
            self.userInteractionEnabled = FALSE;
            [self performSelector:@selector(removeAllAtoms) withObject:nil afterDelay:4];
            [self performSelector:@selector(removeMaxedOutLabel) withObject:nil afterDelay:4];
            
            _nextXvalue = 50;
            _nextYvalue = 75;
            
        }
    }
    self.didLaunch = NO;
}

-(void) removeMaxedOutLabel
{
    if (_maxedOutLabel != nil)
    {
        [_maxedOutLabel removeFromParent];
        _maxedOutLabel = nil;
    }
    self.userInteractionEnabled = TRUE;
}
-(void) launchAtom: (NSString*) atomString
{
    self.didLaunch = YES;
    NSString *formattedString = [NSString stringWithFormat:@"Elements/%@", atomString];
    _currentAtom = nil;
    _currentAtom = (id)[CCBReader load: formattedString];
    _currentAtom.atomLabel.visible = TRUE;
    _currentAtom.scale = .75;
    [_listOfAtoms addObject:_currentAtom];
    [self addToGrid: _currentAtom];
    _currentNumberOfAtoms++;
    _currentAtom.physicsBody.allowsRotation = FALSE;
    _currentAtom.physicsBody.affectedByGravity = FALSE;
    
    if (self.arrow1 != nil || self.arrow2 != nil)
    {
        [self.arrow1 removeFromParent];
        [self.arrow2 removeFromParent];
        self.arrow1 = nil;
        self.arrow2 = nil;
        
    }
}

-(void) restart
{

}

-(void) quit
{
    
}

-(void) levelSelect
{
    
}

-(void) nextLevel
{
    
}

-(void)loadParticleExplosionWithParticleName: (NSString *) particleName onObject: (CCNode*) object
{
    @synchronized(self)
    {

        CCParticleSystem *explosion = (CCParticleSystem*)[CCBReader load: particleName];
        explosion.autoRemoveOnFinish = TRUE;
        explosion.position = [self convertToWorldSpace:object.position ];
        [self addChild: explosion];
    }
}

-(void)loadParticleExplosionWithParticleNameFromGrid: (NSString *) particleName onObject: (CCNode*) object
{
    @synchronized(self)
    {
        CCParticleSystem *explosion = (CCParticleSystem*)[CCBReader load: particleName];
        explosion.autoRemoveOnFinish = TRUE;
        explosion.position = object.position;
        [self.grid addChild: explosion];
    }
}
@end
