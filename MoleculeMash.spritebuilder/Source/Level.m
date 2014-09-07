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
    
    int _nextXvalue;
    int _nextYvalue;

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
    
    _nextXvalue = 50;
    _nextYvalue = 50;
    
    
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
    if (_gameStarted)
    {
        NSString *atomString;
        
        if (_levelBasics.trashTime)
        {
            [self removeAllAtoms];
            _levelBasics.trashTime = NO;
        }
        if (_hydrogenButton)
        {
            atomString = @"Hydrogen";
            [self launchAtom: atomString];
            _levelBasics.scrollView.atomList.hydrogenButton = FALSE;
        }
        else if (_lithiumButton)
        {
            atomString = @"Lithium";
            [self launchAtom: atomString];
            _levelBasics.scrollView.atomList.lithiumButton = FALSE;
        }
        else if (_boronButton)
        {
            atomString = @"Boron";
            [self launchAtom: atomString];
            _levelBasics.scrollView.atomList.boronButton = FALSE;
        }
        else if (_carbonButton)
        {
            atomString = @"Carbon";
            [self launchAtom: atomString];
            _levelBasics.scrollView.atomList.carbonButton = FALSE;
        }
        else if (_nitrogenButton)
        {
            atomString = @"Nitrogen";
            [self launchAtom: atomString];
            _levelBasics.scrollView.atomList.nitrogenButton = FALSE;
        }
        else if (_oxygenButton)
        {
            atomString = @"Oxygen";
            [self launchAtom: atomString];
            _levelBasics.scrollView.atomList.oxygenButton = FALSE;
        }
        else if (_fluorineButton)
        {
            atomString = @"Fluorine";
            [self launchAtom: atomString];
            _levelBasics.scrollView.atomList.fluorineButton = FALSE;
        }
        else if (_sodiumButton)
        {
            atomString = @"Sodium";
            [self launchAtom: atomString];
            _levelBasics.scrollView.atomList.sodiumButton = FALSE;
        }
        else if (_phosphorousButton)
        {
            atomString = @"Phosphorous";
            [self launchAtom: atomString];
            _levelBasics.scrollView.atomList.phosphorousButton = FALSE;
        }
        else if (_sulfurButton)
        {
            atomString = @"Sulfur";
            [self launchAtom: atomString];
            _levelBasics.scrollView.atomList.sulfurButton = FALSE;
        }
        else if (_chlorineButton)
        {
            atomString = @"Chlorine";
            [self launchAtom: atomString];
            _levelBasics.scrollView.atomList.chlorineButton = FALSE;
        }
        else if (_potassiumButton)
        {
            atomString = @"Potassium";
            [self launchAtom: atomString];
            _levelBasics.scrollView.atomList.potassiumButton = FALSE;
        }
        else if (_bromineButton)
        {
            atomString = @"Bromine";
            [self launchAtom: atomString];
            _levelBasics.scrollView.atomList.bromineButton = FALSE;
        }
        else if (_rubidiumButton)
        {
            atomString = @"Rubidium";
            [self launchAtom: atomString];
            _levelBasics.scrollView.atomList.rubidiumButton = FALSE;
        }
        
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
    _nextXvalue += 100;
    
    if (_nextXvalue > _grid.contentSize.width)
    {
        _nextXvalue = 50;
        _nextYvalue += 50;
        if (_nextYvalue >= _grid.contentSize.height)
        {
            _maxedOutLabel = (GenericLabel *)[CCBReader load:@"GenericLabel"];
            _maxedOutLabel.position = ccp(self.contentSize.width*.5, self.contentSize.height*1.2);
            id labelMoveTo = [CCActionMoveTo actionWithDuration:.5  position: ccp(self.contentSize.width*.5, self.contentSize.height*.5)];
            id labelBounceOut = [CCActionEaseElasticInOut actionWithAction: labelMoveTo period: .4];
            [self addChild:_maxedOutLabel];
            [_maxedOutLabel runAction: labelBounceOut];
            
            [self performSelector:@selector(removeAllAtoms) withObject:nil afterDelay:1];
            [self performSelector:@selector(removeMaxedOutLabel) withObject:nil afterDelay:1];
            
            _nextXvalue = 50;
            _nextYvalue = 50;
            
        }
    }
}

-(void) removeMaxedOutLabel
{
    if (_maxedOutLabel != nil)
    {
        [_maxedOutLabel removeFromParent];
        _maxedOutLabel = nil;
    }
}
-(void) launchAtom: (NSString*) atomString
{
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
}

@end
