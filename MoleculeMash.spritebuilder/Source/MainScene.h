//
//  MainScene.h
//  PROJECTNAME
//
//  Created by Viktor on 10/10/13.
//  Copyright (c) 2013 Apportable. All rights reserved.
//

#import "CCNode.h"
#import "Level.h"
#import "CCPhysics+ObjectiveChipmunk.h"
@interface MainScene : CCNode <CCPhysicsCollisionDelegate>
@property (assign, nonatomic) int levelNumber;

@end
