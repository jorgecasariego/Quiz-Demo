//
//  Question.m
//  Quiz Demo
//
//  Created by Jorge Casariego on 05/02/14.
//  Copyright (c) 2014 Jorge Casariego. All rights reserved.
//

#import "Question.h"

@implementation Question

- (id)init
{
    self = [super init];
    if (self) {
        // Initialize self.
        self.answers = [[NSMutableArray alloc] init];
    }
    return self;
}

@end
