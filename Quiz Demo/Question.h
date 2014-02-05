//
//  Question.h
//  Quiz Demo
//
//  Created by Jorge Casariego on 05/02/14.
//  Copyright (c) 2014 Jorge Casariego. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, strong) NSString *questionText;
@property (nonatomic, strong) NSMutableArray *answers;
@property (nonatomic) int correctAnswerIndex;

@end
