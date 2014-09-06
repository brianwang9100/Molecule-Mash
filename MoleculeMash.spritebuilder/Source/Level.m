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

-(void) didLoadFromCCB
{
    self.userInteractionEnabled = TRUE;
    _physicsNode.collisionDelegate = self;
    _currentObjectiveNumber = 0;
    _timeTookForSwipe = 0;
    
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
    if (
}

-(void) calculateDirections
{
    
}

-(void) update:(CCTime)delta
{
    _timeTookForSwipe += delta;
}
@end
