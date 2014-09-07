//
//  AtomList.m
//  MoleculeMash
//
//  Created by Brian Wang on 9/6/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "AtomList.h"

@implementation AtomList

-(void) didLoadFromCCB
{
     _hydrogenButton = FALSE;
     _lithiumButton = FALSE;
     _boronButton = FALSE;
     _carbonButton = FALSE;
     _oxygenButton = FALSE;
     _chlorineButton = FALSE;
     _sodiumButton = FALSE;
     _phosphorousButton = FALSE;
     _sulfurButton = FALSE;
     _bromineButton = FALSE;
     _rubidiumButton = FALSE;
     _fluorineButton = FALSE;
     _nitrogenButton = FALSE;
     _potassiumButton = FALSE;
}
-(void) activateHydrogen
{
    _hydrogenButton = TRUE;
}

-(void) activateLithium
{
    _lithiumButton = TRUE;
}

-(void) activateBoron
{
    _boronButton = TRUE;
}

-(void) activateNitrogen
{
    _nitrogenButton = TRUE;
}

-(void) activateCarbon
{
    _carbonButton = TRUE;
}

-(void) activateOxygen
{
    _oxygenButton = TRUE;
}

-(void) activateFluorine
{
    _fluorineButton = TRUE;
}

-(void) activateSodium
{
    _sodiumButton = TRUE;
}

-(void) activatePhosphorous
{
    _phosphorousButton = TRUE;
}

-(void) activateSulfur
{
    _sulfurButton = TRUE;
}

-(void) activateChlorine
{
    _chlorineButton = TRUE;
}

-(void) activatePotassium
{
    _potassiumButton = TRUE;
}

-(void) activateBromine
{
    _bromineButton = TRUE;
}

-(void) activateRubidium
{
    _rubidiumButton = TRUE;
}

-(void) update:(CCTime)delta
{
    
}
@end
