//
//  startScene.m
//  MoleculeMash
//
//  Created by Justin Matsnev on 9/6/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "startScene.h"

@implementation startScene
{
    CCLabelTTF *_molecule;
    CCLabelTTF *_mash;
    CCNode *_atom;
    CCLabelTTF *_label;
    CCButton *_button;
}

-(void)play {
    [self loadParticleExplosionWithParticleName:@"Particles" onObject:_button];
    [self loadParticleExplosionWithParticleName:@"BigParticles" onObject: _button];
    [self performSelector:@selector(playTransition) withObject:nil afterDelay:2];
}

-(void)playTransition
{
    CCScene *mainScene = [CCBReader loadAsScene:@"LevelSelect"];
    CCTransition *transition = [CCTransition transitionCrossFadeWithDuration:.5f];
    [[CCDirector sharedDirector] replaceScene:mainScene withTransition:transition];
}

-(void) didLoadFromCCB {
    
    _molecule.position = ccp(self.contentSize.width*.5, self.contentSize.height*1.2);
    _button.position = ccp(self.contentSize.width*.5, self.contentSize.height*1.2);

    
    id contentNodeDrop = [CCActionMoveTo actionWithDuration: 2 position:ccp(self.contentSize.width*.5, self.contentSize.height*.85)];
    id contentNodeBounce = [CCActionEaseElasticInOut actionWithAction:contentNodeDrop period: .4];
    [_molecule runAction: contentNodeBounce];
    
    id contentNodeDrop1 = [CCActionMoveTo actionWithDuration:2 position:ccp(self.contentSize.width*.5, self.contentSize.height*.45)];
    id contentNodeGoIn = [CCActionEaseIn actionWithAction:contentNodeDrop1];
    [_button runAction:contentNodeGoIn];
    
    _mash.position = ccp(self.contentSize.width*.5, self.contentSize.height*1.2);

    _atom.position = ccp(self.contentSize.width*.5, self.contentSize.height*1.2);
    
    _label.position = ccp(50, self.contentSize.height*1.2);


    
    [self performSelector:@selector(dropMash) withObject:nil afterDelay:.5];
    
    [self performSelector:@selector(slideInAtom) withObject:nil afterDelay:1];

    [self performSelector:@selector(slideInLabel) withObject:nil afterDelay:1.5];

    
    
}

-(void) dropMash {

    id contentNodeDrop1 = [CCActionMoveTo actionWithDuration: 2 position:ccp(self.contentSize.width*.5, self.contentSize.height*.65)];
    id contentNodeBounce1 = [CCActionEaseElasticInOut actionWithAction:contentNodeDrop1 period: .4];
    [_mash runAction: contentNodeBounce1];

}



-(void) slideInAtom {
    id contentNodeDrop1 = [CCActionMoveTo actionWithDuration: 2 position:ccp(self.contentSize.width*.5, self.contentSize.height*.45)];
    id contentNodeBounce1 = [CCActionEaseElasticInOut actionWithAction:contentNodeDrop1 period: .4];
    [_atom runAction: contentNodeBounce1];
}

-(void) slideInLabel {
    id contentNodeDrop1 = [CCActionMoveTo actionWithDuration:1 position:ccp(self.contentSize.width*.5, self.contentSize.height*.25)];
    id contentNodeSlide = [CCActionEaseElasticInOut actionWithAction:contentNodeDrop1];
    [_label runAction: contentNodeSlide];
}

-(void)loadParticleExplosionWithParticleName: (NSString *) particleName onObject: (CCNode*) object
{
    @synchronized(self)
    {
        
        CCParticleSystem *explosion = (CCParticleSystem*)[CCBReader load: particleName];
        explosion.autoRemoveOnFinish = TRUE;
        explosion.position = [self convertToWorldSpaceAR:object.position];
        [self addChild: explosion];
    }
}
@end
