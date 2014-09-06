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
    CCNode *_pauseScene;
    
    CCNode *_mainPauseButton;
    
    BOOL paused;
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
        
        [[CCDirector sharedDirector] replaceScene: [CCBReader loadAsScene:@"MainScene"]];
        
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
