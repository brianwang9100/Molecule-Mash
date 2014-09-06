//
//  LevelBasics.h
//  MoleculeMash
//
//  Created by Justin Matsnev on 9/6/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCNode.h"

@interface LevelBasics : CCNode
@property (assign, nonatomic) int levelNumber;

@property (strong, nonatomic) CCNodeColor *hydrogenButton;
@property (strong, nonatomic) CCNodeColor *lithiumButton;
@property (strong, nonatomic) CCNodeColor *boronButton;
@property (strong, nonatomic) CCNodeColor *carbonButton;
@property (strong, nonatomic) CCNodeColor *oxygenButton;
@property (strong, nonatomic) CCNodeColor *chlorineButton;
@property (strong, nonatomic) CCNodeColor *sodiumButton;
@property (strong, nonatomic) CCNodeColor *phosphorousButton;
@property (strong, nonatomic) CCNodeColor *sulfurButton;
@property (strong, nonatomic) CCNodeColor *bromineButton;
@property (strong, nonatomic) CCNodeColor *rubidiumButton;
@property (strong, nonatomic) CCNodeColor *fluorineButton;
@property (strong, nonatomic) CCNodeColor *nitrogenButton;
@property (strong, nonatomic) CCNodeColor *potassiumButton;

-(void)pause;
@end
