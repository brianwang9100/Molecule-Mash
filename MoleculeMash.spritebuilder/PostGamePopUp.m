//
//  PostGamePopUp.m
//  MoleculeMash
//
//  Created by Brian Wang on 9/7/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "PostGamePopUp.h"

@implementation PostGamePopUp
{
    CCNode *_star1;
    CCNode *_star2;
    CCNode *_star3;
}

-(void) didLoadFromCCB
{
    self.time = 0;
    self.beginAnimation = NO;
    self.userInteractionEnabled = YES;
}

-(void) update:(CCTime)delta
{
    if (self.beginAnimation)
    {
        [self animateStars];
        self.beginAnimation = NO;
    }
    
}

-(void) animateStars
{
    if (self.time <= 30.0f)
    {
        [self performSelector:@selector(loadStar1) withObject:nil afterDelay:.75];
    }
    if (self.time <= 20.0f)
    {
        [self performSelector:@selector(loadStar2) withObject:nil afterDelay:1.50];
    }
    if (self.time <= 10.0f)
    {
        [self performSelector:@selector(loadStar3) withObject:nil afterDelay:2.25];
        
    }
    
}

-(void) loadStar1
{
    _star1.visible = TRUE;
    [self loadParticleExplosionWithParticleName: @"Particles2" onObject: _star1];
}
-(void) loadStar2
{
    _star2.visible = TRUE;
    [self loadParticleExplosionWithParticleName: @"Particles2" onObject: _star2];
}
-(void) loadStar3
{
    _star3.visible = TRUE;
    [self loadParticleExplosionWithParticleName: @"Particles2" onObject: _star3];
}

-(void)loadParticleExplosionWithParticleName: (NSString *) particleName onObject: (CCNode*) object
{
    @synchronized(self)
    {
        CCParticleSystem *explosion = (CCParticleSystem*)[CCBReader load: particleName];
        explosion.autoRemoveOnFinish = TRUE;
        explosion.position = object.positionInPoints;
        [self addChild: explosion];
    }
}
-(void) restart
{
    CCScene *mainScene = [CCBReader loadAsScene:[NSString stringWithFormat: @"Level%i",( self.level.levelNumber) ]];
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
    CCScene *mainScene = [CCBReader loadAsScene:[NSString stringWithFormat: @"Level%i", (self.level.levelNumber+1 )]];
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
