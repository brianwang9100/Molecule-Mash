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

-(void) didLoadFromCCB;
@end
