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
    CGPoint _locationTouchBegan;
    CGPoint _locationTouchEnded;
    float _timeTookForSwipe;
    int _screenSizeMultiplier;
    
}

-(void) didLoadFromCCB
{
    self.userInteractionEnabled = TRUE;
    self.physicsNode.collisionDelegate = self;
    self.currentObjectiveNumber = 0;
    _timeTookForSwipe = 0;
    self.gameStarted = FALSE;
//    _screenSizeMultiplier = 1;
    
    
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
    
//    if ([self isiPad])
//    {
//        _screenSizeMultiplier = 2;
//    }
    
    [self startGame];
    
}
-(void)startGame
{
    self.gameStarted = YES;
}

-(BOOL) isiPad {
    return UI_USER_INTERFACE_IDIOM()==UIUserInterfaceIdiomPad;
}

-(void) cycleNextObjective
{
    _currentObjectiveNumber++;
}

//-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event
//{
//    _timeTookForSwipe = 0;
//    _locationTouchBegan = [touch locationInNode:self];
//    
//}
//
//-(void) touchEnded:(UITouch *)touch withEvent:(UIEvent *)event
//{
//    NSString *atomString;
//    CCNodeColor *buttonRef;
//    _locationTouchEnded = [touch locationInNode: self];
//    
//    if ([self containsExactTouchLocation:_locationTouchBegan withObject:_hydrogenNode])
//    {
//        atomString = @"Hydrogen";
//        buttonRef = _hydrogenNode;
//    }
//    else if ([self containsExactTouchLocation:_locationTouchBegan withObject:_lithiumNode])
//    {
//        atomString = @"Lithium";
//        buttonRef = _lithiumNode;
//    }
//    else if ([self containsExactTouchLocation:_locationTouchBegan withObject:_boronNode])
//    {
//        atomString = @"Boron";
//        buttonRef = _boronNode;
//    }
//    else if ([self containsExactTouchLocation:_locationTouchBegan withObject:_carbonNode])
//    {
//        atomString = @"Carbon";
//        buttonRef = _carbonNode;
//    }
//    else if ([self containsExactTouchLocation:_locationTouchBegan withObject:_nitrogenNode])
//    {
//        atomString = @"Nitrogen";
//        buttonRef = _nitrogenNode;
//    }
//    else if ([self containsExactTouchLocation:_locationTouchBegan withObject:_oxygenNode])
//    {
//        atomString = @"Oxygen";
//        buttonRef = _oxygenNode;
//    }
//    else if ([self containsExactTouchLocation:_locationTouchBegan withObject:_fluorineNode])
//    {
//        atomString = @"Fluorine";
//        buttonRef = _fluorineNode;
//    }
//    else if ([self containsExactTouchLocation:_locationTouchBegan withObject:_sodiumNode])
//    {
//        atomString = @"Sodium";
//        buttonRef = _sodiumNode;
//    }
//    else if ([self containsExactTouchLocation:_locationTouchBegan withObject:_phosphorousNode])
//    {
//        atomString = @"Phosphorous";
//        buttonRef = _phosphorousNode;
//    }
//    else if ([self containsExactTouchLocation:_locationTouchBegan withObject:_sulfurNode])
//    {
//        atomString = @"Sulfur";
//        buttonRef = _sulfurNode;
//    }
//    else if ([self containsExactTouchLocation:_locationTouchBegan withObject:_chlorineNode])
//    {
//        atomString = @"Chlorine";
//        buttonRef = _chlorineNode;
//    }
//    else if ([self containsExactTouchLocation:_locationTouchBegan withObject:_potassiumNode])
//    {
//        atomString = @"Potassium";
//        buttonRef = _potassiumNode;
//    }
//    else if ([self containsExactTouchLocation:_locationTouchBegan withObject:_bromineNode])
//    {
//        atomString = @"Bromine";
//        buttonRef = _bromineNode;
//    }
//    else if ([self containsExactTouchLocation:_locationTouchBegan withObject:_rubidiumNode])
//    {
//        atomString = @"Rubidium";
//        buttonRef = _rubidiumNode;
//    }
//    else
//    {
//        return;
//    }
//    
//    if (_timeTookForSwipe == 0)
//    {
//        _timeTookForSwipe = (float).35;
//    }
//    
//    //actually moves the fruit
//    CGPoint direction = ccp([self calculateDirections].x * _currentAtom.physicsBody.mass/_timeTookForSwipe,[self calculateDirections].y * _screenSizeMultiplier * _currentAtom.physicsBody.mass/_timeTookForSwipe);
//    
//    //set minimums and maximums for speed
//    float forceThreshold = _currentAtom.physicsBody.mass*_screenSizeMultiplier*500/.5;
//    float forceMax = _currentAtom.physicsBody.mass*_screenSizeMultiplier*1500/.5;
//    
//    if (direction.x > forceThreshold)
//    {
//        return;
//    }
//    else if (direction.x < forceMax)
//    {
//        direction.x = forceMax;
//    }
//    
//    _currentAtom = (id)[CCBReader load: atomString];
//    _currentAtom.position = _locationTouchBegan;
//    _currentAtom.physicsBody.allowsRotation = FALSE;
//    _currentAtom.physicsBody.affectedByGravity = FALSE;
//    [_physicsNode addChild:_currentAtom];
//    [_currentAtom.physicsBody applyForce:ccpMult(direction,20)];
//    
//    
//    
//}

-(void) update:(CCTime)delta
{
    if (_gameStarted)
    {
        _timeTookForSwipe += delta;
        NSString *atomString;
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

-(void) launchAtom: (NSString*) atomString
{
    float randomXDirection = [self randomFloat];
    NSString *formattedString = [NSString stringWithFormat:@"Elements/%@", atomString];
    CGPoint direction = ccp(randomXDirection, 300);
    _currentAtom = nil;
    _currentAtom = (id)[CCBReader load: formattedString];
    _currentAtom.position = ccp(0,0);
    [_physicsNode addChild:_currentAtom];
    [_currentAtom.physicsBody applyForce:ccpMult(direction,100)];
    _currentAtom.physicsBody.allowsRotation = FALSE;
    _currentAtom.physicsBody.affectedByGravity = FALSE;
}
@end
