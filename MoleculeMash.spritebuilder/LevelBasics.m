//
//  LevelBasics.m
//  MoleculeMash
//
//  Created by Justin Matsnev on 9/6/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "LevelBasics.h"

@implementation LevelBasics
{
    CCScrollView *_scrollView;
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
@end
