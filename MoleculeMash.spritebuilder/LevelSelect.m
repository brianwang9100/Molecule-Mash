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


//-(void) changeLevel: (id) sender
//{
//    CCButton *selectedButton = (CCButton *)sender;
//    int levelNumber = (int)[selectedButton.name intValue];
//    Level *levelScene = (Level *)[CCBReader loadAsScene: [NSString stringWithFormat:@"Level%i", levelNumber]];
//    [[CCDirector sharedDirector]  replaceScene: levelScene];
//}

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
