//
//  LevelBasics.h
//  MoleculeMash
//
//  Created by Justin Matsnev on 9/6/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCNode.h"
#import "LevelScrollView.h"

@interface LevelBasics : CCNode
@property (assign, nonatomic) int levelNumber;
@property (strong, nonatomic) LevelScrollView *scrollView;
@property (assign, nonatomic) BOOL trashTime;
@property (strong, nonatomic) CCLabelTTF *objectiveLabel;
@property (strong, nonatomic) CCLabelTTF *levelTitleLabel;

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
-(void)pause;
@end
