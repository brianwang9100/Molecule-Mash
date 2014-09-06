//
//  MainScene.h
//  PROJECTNAME
//
//  Created by Viktor on 10/10/13.
//  Copyright (c) 2013 Apportable. All rights reserved.
//

#import "CCScene.h"
#import "CCPhysics+ObjectiveChipmunk.h"
#import "Atom.h"
@interface Level : CCScene <CCPhysicsCollisionDelegate>
@property (assign, nonatomic) int levelNumber;
@property (strong, nonatomic) Atom *currentAtom;
@property (strong, nonatomic) CCPhysicsNode *physicsNode;
@property (strong, nonatomic) CCNode *pauseScene;
@property (strong, nonatomic) CCNode *mainPauseButton;
@property (assign, nonatomic) BOOL paused;

@property (assign, nonatomic) int totalNumberOfObjectives;
@property (assign, nonatomic) int currentObjectiveNumber;
@property (strong, nonatomic) NSMutableArray *objectiveFirstAtom;
@property (strong, nonatomic) NSMutableArray *objectiveFinalMolecule;
@property (strong, nonatomic) CCLabelTTF *objectiveLabel;
@property (strong, nonatomic) CCLabelTTF *levelTitleLabel;

-(void) didLoadFromCCB;
-(void) update:(CCTime)delta;
-(void) pause;
-(void) restart;
-(void) quit;
@end
