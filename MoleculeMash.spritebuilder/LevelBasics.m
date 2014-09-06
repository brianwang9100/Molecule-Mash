//
//  LevelBasics.m
//  MoleculeMash
//
//  Created by Justin Matsnev on 9/6/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "LevelBasics.h"
#import "Level.h"

@implementation LevelBasics
{
    CCScrollView *_scrollView;
    CCNode *_pauseScene;
    CCNode *_mainPauseButton;
    BOOL paused;
}

-(void) didLoadFromCCB {
    // Create clipping viewport to clip scrollview
    CGSize winSize= [CCDirector sharedDirector].viewSize;
    
    _scrollView.position =ccp(_scrollView.position.x, winSize.height*.5);
    
    // Get content size in points.. contentSizeInPoints doesn't work in didLoad
    float width = _scrollView.contentSize.width * winSize.width;
    float height = _scrollView.contentSize.height * winSize.height;
    
    [_scrollView removeFromParent];
    
    CCNodeColor *scissorRect = [CCNodeColor nodeWithColor:[CCColor redColor]
                                                    width:width
                                                   height:height];
    [scissorRect setAnchorPoint:_scrollView.anchorPoint];
    
    [scissorRect setPosition:_scrollView.position];
    
    CCClippingNode *scissor = [CCClippingNode clippingNodeWithStencil:scissorRect];
    [scissor setContentSize: winSize];
    [scissor setAlphaThreshold:0.0];
    
    [self addChild:scissor];
    
    [scissor addChild:_scrollView];
}

-(void)pause
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
        [[CCDirector sharedDirector] replaceScene: [CCBReader loadAsScene:[NSString stringWithFormat: @"Levels/Level%i", self.levelNumber]]];
        
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
