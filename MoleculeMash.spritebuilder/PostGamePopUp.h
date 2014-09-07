//
//  PostGamePopUp.h
//  MoleculeMash
//
//  Created by Brian Wang on 9/7/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCNode.h"

@interface PostGamePopUp : CCNode
@property (strong, nonatomic) CCLabelTTF *timerLabel;
@property (strong, nonatomic) CCLabelTTF *messageLabel;
@property (assign, nonatomic) BOOL beginAnimation;
@property (assign, nonatomic) float time;


@end
