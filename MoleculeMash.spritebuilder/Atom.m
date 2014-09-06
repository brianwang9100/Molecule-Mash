//
//  Atom.m
//  MoleculeMash
//
//  Created by Brian Wang on 9/6/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Atom.h"

@implementation Atom
-(void) didLoadFromCCB
{
    
}

-(id) initWithProtons: (int) protons withNeutrons: (int) neutrons withElectrons: (int) electrons
{
    _protonNumber = protons;
    _neutronNumber = neutrons;
    _electronNumber = electrons;
    
    return self;
}

-(void) addProton
{
    
}

-(void) addNeutron
{
    
}

-(void) addElectron
{
    
}

-(void) update:(CCTime)delta
{

}
@end
