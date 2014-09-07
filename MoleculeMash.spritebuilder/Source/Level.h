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
#import "Hydrogen.h"
#import "Boron.h"
#import "Carbon.h"
#import "Lithium.h"
#import "Sulfur.h"
#import "Sodium.h"
#import "Oxygen.h"
#import "Bromine.h"
#import "Rubidium.h"
#import "Chlorine.h"
#import "Fluorine.h"
#import "Nitrogen.h"
#import "Potassium.h"
#import "Phosphorous.h"
#import "GenericLabel.h"


@interface Level : CCScene <CCPhysicsCollisionDelegate>
@property (strong, nonatomic) Atom *currentAtom;
@property (strong, nonatomic) CCPhysicsNode *physicsNode;
@property (strong, nonatomic) CCNode *pauseScene;
@property (strong, nonatomic) CCNode *mainPauseButton;
@property (assign, nonatomic) BOOL paused;
@property (assign, nonatomic) LevelBasics *levelBasics;
@property (assign, nonatomic) int levelNumber;
@property (assign, nonatomic) BOOL gameStarted;
@property (assign, nonatomic) int maxNumberOfAtoms;
@property (assign, nonatomic) int currentNumberOfAtoms;
@property (strong, nonatomic) CCNode *grid;
@property (strong, nonatomic) CCNode *currentMolecule;
@property (strong, nonatomic) CCLabelTTF *backgroundLabel;
@property (assign, nonatomic) BOOL *didLaunch;
@property (assign, nonatomic) int nextXvalue;
@property (assign, nonatomic) int nextYvalue;
@property (assign, nonatomic) CCNode *arrow1;
@property (assign, nonatomic) CCNode *arrow2;

@property (assign, nonatomic) int totalNumberOfObjectives;
@property (assign, nonatomic) int currentObjectiveNumber;
@property (strong, nonatomic) NSMutableArray *listOfAtoms;
@property (strong, nonatomic) NSMutableArray *objectiveFinalMolecule;
@property (strong, nonatomic) NSMutableArray *objectiveFinalMoleculeForm;

@property (assign, nonatomic) BOOL  hydrogenButton;
@property (assign, nonatomic) BOOL  lithiumButton;
@property (assign, nonatomic) BOOL  boronButton;
@property (assign, nonatomic) BOOL  carbonButton;
@property (assign, nonatomic) BOOL  oxygenButton;
@property (assign, nonatomic) BOOL  chlorineButton;
@property (assign, nonatomic) BOOL  sodiumButton;
@property (assign, nonatomic) BOOL  phosphorousButton;
@property (assign, nonatomic) BOOL  sulfurButton;
@property (assign, nonatomic) BOOL  bromineButton;
@property (assign, nonatomic) BOOL  rubidiumButton;
@property (assign, nonatomic) BOOL  fluorineButton;
@property (assign, nonatomic) BOOL  nitrogenButton;
@property (assign, nonatomic) BOOL  potassiumButton;

-(void) didLoadFromCCB;
-(void) pause;
-(void) update:(CCTime)delta;
-(void) restart;
-(void) quit;
-(void) launchAtom: (NSString*) atomString;
-(void) removeMaxedOutLabel;
-(void) removeAllAtoms;
@end
