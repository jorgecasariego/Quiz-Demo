//
//  QuizModel.m
//  Quiz Demo
//
//  Created by Jorge Casariego on 05/02/14.
//  Copyright (c) 2014 Jorge Casariego. All rights reserved.
//

#import "QuizModel.h"
#import "Question.h"

@implementation QuizModel

- (NSMutableArray*)getQuestions
{
    NSMutableArray *questions = [[NSMutableArray alloc] init];
    
    //First question
    Question *q = [[Question alloc] init];
    q.questionText = @"When was the iPhone first invented?";

    [q.answers addObject:@"2007"];
    [q.answers addObject:@"2008"];
    [q.answers addObject:@"1983"];
    q.correctAnswerIndex = 2;
    
    //Add the question to the array
    [questions addObject:q];
    
    //Second question
    Question *q2 = [[Question alloc] init];
    q2.questionText = @"What percent of US high school students own iPhones?";
    
    [q2.answers addObject:@"50%"];
    [q2.answers addObject:@"33%"];
    [q2.answers addObject:@"25%"];
    q2.correctAnswerIndex = 1;
    
    //Add the question to the array
    [questions addObject:q2];
    
    //Third question
    Question *q3 = [[Question alloc] init];
    q3.questionText = @"Which company makes the CPU chip in iPhone?";
    
    [q3.answers addObject:@"Intel"];
    [q3.answers addObject:@"AMD"];
    [q3.answers addObject:@"Samsung"];
    q3.correctAnswerIndex = 2;
    
    //Add the question to the array
    [questions addObject:q3];
    
    NSLog(@"Array has %i questions", questions.count);
    
    //Return the question list
    return questions;
}

@end
