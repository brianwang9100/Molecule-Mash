//
//  LevelScrollView.m
//  MoleculeMash
//
//  Created by Brian Wang on 9/6/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "LevelScrollView.h"
#import "AtomList.h"
@implementation LevelScrollView
{
    AtomList *_atomList;
}
-(void) didLoadFromCCB
{
    _atomList = (AtomList *)[self contentNode];
    _hydrogenButton = _atomList.hydrogenButton;
    _lithiumButton = _atomList.lithiumButton;
    _boronButton = _atomList.boronButton;
    _carbonButton = _atomList.carbonButton;
    _oxygenButton = _atomList.oxygenButton;
    _chlorineButton = _atomList.chlorineButton;
    _sodiumButton = _atomList.sodiumButton;
    _phosphorousButton = _atomList.phosphorousButton;
    _sulfurButton = _atomList.sulfurButton;
    _bromineButton = _atomList.bromineButton;
    _rubidiumButton = _atomList.rubidiumButton;
    _fluorineButton = _atomList.fluorineButton;
    _nitrogenButton = _atomList.nitrogenButton;
    _potassiumButton = _atomList.potassiumButton;
    
}
-(void) update:(CCTime)delta
{
    
}
@end
