//
//  LevelSelect.m
//  MoleculeMash
//
//  Created by Mitchell Malinin on 9/6/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "LevelSelect.h"
#import "Level.h"

@implementation LevelSelect
{
    CCLayoutBox *_layout1;
    CCLayoutBox *_layout2;
    CCLayoutBox *_layout3;
    CCLayoutBox *_layout4;
}

//-(void) changeLevel: (id) sender
//{
//    CCButton *selectedButton = (CCButton *)sender;
//    int levelNumber = (int)[selectedButton.name intValue];
//    Level *levelScene = (Level *)[CCBReader loadAsScene: [NSString stringWithFormat:@"Level%i", levelNumber]];
//    [[CCDirector sharedDirector]  replaceScene: levelScene];
//}

-(void) didLoadFromCCB
{
    
    _layout1.position = ccp(100, self.contentSize.height*1.2);
    
    id contentNodeDrop = [CCActionMoveTo actionWithDuration: 2 position:ccp(self.contentSize.width*.5, self.contentSize.height*.85)];
    id contentNodeBounce = [CCActionEaseElasticInOut actionWithAction:contentNodeDrop period: .4];
    [_layout1 runAction: contentNodeBounce];
    
    _layout2.position = ccp(75, self.contentSize.height*1.2);
    
    id contentNodeDrop1 = [CCActionMoveTo actionWithDuration: 2 position:ccp(self.contentSize.width*.5, self.contentSize.height*.85)];
    id contentNodeBounce1 = [CCActionEaseElasticInOut actionWithAction:contentNodeDrop1 period: .4];
    [_layout2 runAction: contentNodeBounce1];
    
    _layout3.position = ccp(50, self.contentSize.height*1.2);
    
    id contentNodeDrop2 = [CCActionMoveTo actionWithDuration: 2 position:ccp(self.contentSize.width*.5, self.contentSize.height*.85)];
    id contentNodeBounce2 = [CCActionEaseElasticInOut actionWithAction:contentNodeDrop2 period: .4];
    [_layout3 runAction: contentNodeBounce2];
    
    _layout4.position = ccp(25, self.contentSize.height*1.2);
    
    id contentNodeDrop3 = [CCActionMoveTo actionWithDuration: 2 position:ccp(self.contentSize.width*.5, self.contentSize.height*.85)];
    id contentNodeBounce3 = [CCActionEaseElasticInOut actionWithAction:contentNodeDrop3 period: .4];
    [_layout4 runAction: contentNodeBounce3];
    
    
    
    
    
}
-(void)level1 {
    CCScene *mainScene = [CCBReader loadAsScene:@"Levels/Level1"];
    CCTransition *transition = [CCTransition transitionCrossFadeWithDuration:.5f];
    [[CCDirector sharedDirector] replaceScene:mainScene withTransition:transition];
}

-(void)level2 {
    CCScene *mainScene = [CCBReader loadAsScene:@"Levels/Level2"];
    CCTransition *transition = [CCTransition transitionCrossFadeWithDuration:.5f];
    [[CCDirector sharedDirector] replaceScene:mainScene withTransition:transition];
}

-(void)level3 {
    CCScene *mainScene = [CCBReader loadAsScene:@"Levels/Level3"];
    CCTransition *transition = [CCTransition transitionCrossFadeWithDuration:.5f];
    [[CCDirector sharedDirector] replaceScene:mainScene withTransition:transition];
}

-(void)level4 {
    CCScene *mainScene = [CCBReader loadAsScene:@"Levels/Level4"];
    CCTransition *transition = [CCTransition transitionCrossFadeWithDuration:.5f];
    [[CCDirector sharedDirector] replaceScene:mainScene withTransition:transition];
}

-(void)level5 {
    CCScene *mainScene = [CCBReader loadAsScene:@"Levels/Level5"];
    CCTransition *transition = [CCTransition transitionCrossFadeWithDuration:.5f];
    [[CCDirector sharedDirector] replaceScene:mainScene withTransition:transition];
}

-(void)level6 {
    CCScene *mainScene = [CCBReader loadAsScene:@"Levels/Level6"];
    CCTransition *transition = [CCTransition transitionCrossFadeWithDuration:.5f];
    [[CCDirector sharedDirector] replaceScene:mainScene withTransition:transition];
}

-(void)level7 {
    CCScene *mainScene = [CCBReader loadAsScene:@"Levels/Level7"];
    CCTransition *transition = [CCTransition transitionCrossFadeWithDuration:.5f];
    [[CCDirector sharedDirector] replaceScene:mainScene withTransition:transition];
}

-(void)level8 {
    CCScene *mainScene = [CCBReader loadAsScene:@"Levels/Level8"];
    CCTransition *transition = [CCTransition transitionCrossFadeWithDuration:.5f];
    [[CCDirector sharedDirector] replaceScene:mainScene withTransition:transition];
}

-(void)level9 {
    CCScene *mainScene = [CCBReader loadAsScene:@"Levels/Level9"];
    CCTransition *transition = [CCTransition transitionCrossFadeWithDuration:.5f];
    [[CCDirector sharedDirector] replaceScene:mainScene withTransition:transition];
}

-(void)level10 {
    CCScene *mainScene = [CCBReader loadAsScene:@"Levels/Level10"];
    CCTransition *transition = [CCTransition transitionCrossFadeWithDuration:.5f];
    [[CCDirector sharedDirector] replaceScene:mainScene withTransition:transition];
}

@end
