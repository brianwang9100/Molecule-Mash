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
#import "LevelBasics.h"

@interface Level : CCScene <CCPhysicsCollisionDelegate>
@property (strong, nonatomic) Atom *currentAtom;
@property (strong, nonatomic) CCPhysicsNode *physicsNode;
@property (strong, nonatomic) CCNode *pauseScene;
@property (strong, nonatomic) CCNode *mainPauseButton;
@property (assign, nonatomic) BOOL paused;
@property (assign, nonatomic) LevelBasics *levelBasics;
@property (assign, nonatomic) int levelNumber;

@property (assign, nonatomic) int totalNumberOfObjectives;
@property (assign, nonatomic) int currentObjectiveNumber;
@property (strong, nonatomic) NSMutableArray *listOfAtoms;
@property (strong, nonatomic) NSMutableArray *objectiveFinalMolecule;
@property (strong, nonatomic) CCLabelTTF *objectiveLabel;
@property (strong, nonatomic) CCLabelTTF *levelTitleLabel;

@property (strong, nonatomic) CCNodeColor *hydrogenNode;
@property (strong, nonatomic) CCNodeColor *lithiumNode;
@property (strong, nonatomic) CCNodeColor *boronNode;
@property (strong, nonatomic) CCNodeColor *carbonNode;
@property (strong, nonatomic) CCNodeColor *oxygenNode;
@property (strong, nonatomic) CCNodeColor *chlorineNode;
@property (strong, nonatomic) CCNodeColor *sodiumNode;
@property (strong, nonatomic) CCNodeColor *phosphorousNode;
@property (strong, nonatomic) CCNodeColor *sulfurNode;
@property (strong, nonatomic) CCNodeColor *bromineNode;
@property (strong, nonatomic) CCNodeColor *rubidiumNode;
@property (strong, nonatomic) CCNodeColor *fluorineNode;
@property (strong, nonatomic) CCNodeColor *nitrogenNode;
@property (strong, nonatomic) CCNodeColor *potassiumNode;

-(void) didLoadFromCCB;
-(void) pause;
-(void) update:(CCTime)delta;
-(void) restart;
-(void) quit;
@end
