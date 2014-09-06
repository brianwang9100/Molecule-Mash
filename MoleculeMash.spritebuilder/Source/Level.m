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
    CCPhysicsNode *_physicsNode;
    CCNode *_pauseScene;
    CCNode *_mainPauseButton;
    BOOL paused;
    
    
    
    int _totalNumberOfObjectives;
    int _currentObjectiveNumber;
    NSMutableArray *_objectiveFirstAtom;
    NSMutableArray *_objectiveFinalMolecule;
}

-(void) didLoadFromCCB
{
    self.userInteractionEnabled = TRUE;
    _physicsNode.collisionDelegate = self;
    _currentObjectiveNumber = 0;
    
    [self loadCurrentAtom];
}

-(void) loadCurrentAtom
{
    _currentAtom = (Atom*)[CCBReader load:@"Atom"];
    _currentAtom.position = ccp(self.contentSize.width*.5, 200);
    [_currentAtom setWithProtons:0 withNeutrons:0 withElectrons:0];
    [_physicsNode addChild: _currentAtom];
}

-(void) cycleNextObjective
{
    _currentObjectiveNumber++;
    
}

-(void) pause
{
    if(self.paused)
    {
        
        self.paused = false;
        self.userInteractionEnabled = true;
        [[CCDirector sharedDirector] resume];
        _mainPauseButton.visible = true;
        [self removeChild:_pauseScene];
        
    }
    else
    {
        
        [[CCDirector sharedDirector] pause];
        _pauseScene = [CCBReader load:@"PauseNode" owner:self];
        self.paused = true;
        self.userInteractionEnabled = false;
        _mainPauseButton.visible = false;
        _pauseScene.positionType = (CCPositionTypeMake(CCPositionUnitNormalized, CCPositionUnitNormalized, CCPositionReferenceCornerTopLeft));
        _pauseScene.position = ccp(0.5f,0.5f);
        [self addChild:_pauseScene];
    }
}


-(void) restart {
    if (self.paused) {
        
        self.paused = FALSE;
        
        [[CCDirector sharedDirector] resume];        
        [[CCDirector sharedDirector] replaceScene: [CCBReader loadAsScene:[NSString stringWithFormat: @"Level%i", self.levelNumber]]];
        
    }
}

-(void) quit {
    if (self.paused) {
        
        self.paused = FALSE;

        [[CCDirector sharedDirector] resume];
    }
    
    
    [[CCDirector sharedDirector] replaceScene: [CCBReader loadAsScene:@"startScene"]];
}
@end
