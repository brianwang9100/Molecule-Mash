//
//  MainScene.m
//  PROJECTNAME
//
//  Created by Viktor on 10/10/13.
//  Copyright (c) 2013 Apportable. All rights reserved.
//

#import "Level.h"

@implementation Level
{
    CGPoint _locationTouchBegan;
    CGPoint _locationTouchEnded;
    float _timeTookForSwipe;
}

-(void) onEnter
{
    self.userInteractionEnabled = TRUE;
    _physicsNode.collisionDelegate = self;
    _currentObjectiveNumber = 0;
    _timeTookForSwipe = 0;
    
    _hydrogenNode = _levelBasics.hydrogenButton;
    _lithiumNode = _levelBasics.lithiumButton;
    _boronNode = _levelBasics.boronButton;
    _carbonNode = _levelBasics.carbonButton;
    _oxygenNode = _levelBasics.oxygenButton;
    _chlorineNode = _levelBasics.chlorineButton;
    _sodiumNode = _levelBasics.sodiumButton;
    _phosphorousNode = _levelBasics.phosphorousButton;
    _sulfurNode = _levelBasics.sulfurButton;
    _bromineNode = _levelBasics.bromineButton;
    _rubidiumNode = _levelBasics.rubidiumButton;
    _fluorineNode = _levelBasics.fluorineButton;
    _nitrogenNode = _levelBasics.nitrogenButton;
    _potassiumNode = _levelBasics.potassiumButton;
    
}



-(void) cycleNextObjective
{
    _currentObjectiveNumber++;
}

-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event
{
    _timeTookForSwipe = 0;
    _locationTouchBegan = [touch locationInNode:self];
    
}

-(void) touchEnded:(UITouch *)touch withEvent:(UIEvent *)event
{
    _locationTouchEnded = [touch locationInNode:self];
}

-(void) calculateDirections
{
    
}

-(void) update:(CCTime)delta
{
    _timeTookForSwipe += delta;
}
@end
