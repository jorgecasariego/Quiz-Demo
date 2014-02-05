//
//  ViewController.m
//  Quiz Demo
//
//  Created by Jorge Casariego on 05/02/14.
//  Copyright (c) 2014 Jorge Casariego. All rights reserved.
//

#import "ViewController.h"
#import "Question.h"
#import "QuizModel.h"

@interface ViewController ()
{
    NSMutableArray *_questions;
    Question *_currentQuestion;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Get the question list
    _questions = [[[QuizModel alloc] init] getQuestions];
    _currentQuestion = _questions[0];
    
    [self setViewForQuestion:_currentQuestion];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)answerClick:(id)sender
{
    UIButton *buttonClicked = sender;
    
    NSLog(@"Answer %i ", buttonClicked.tag);
    
    if(_currentQuestion.correctAnswerIndex ==  buttonClicked.tag)
    {
        //User selected the correct answer
        [self showAlertForTitle:@"Correct!" andMessage:@"You were correct!"];
    }
    else
    {
        //User selected the incorrect answer
        NSString *incorrectMessage = [NSString stringWithFormat:@"Correct answer was %@", _currentQuestion.answers[_currentQuestion.correctAnswerIndex]];

        [self showAlertForTitle:@"Incorrect!" andMessage:incorrectMessage];
    }
    
    //Advanced to next question
    int indexOfCorrectQuestion = [_questions indexOfObject:_currentQuestion];
    int indexOfNextQuestion = indexOfCorrectQuestion + 1;
    
    if(indexOfNextQuestion < _questions.count){
        _currentQuestion = _questions[indexOfNextQuestion];
        [self setViewForQuestion:_currentQuestion];
    }
    else{
        //Quiz has ended
        self.questionLabel.text = @"Quiz Finished!";
        [self.answerButton1 removeFromSuperview];
        [self.answerButton2 removeFromSuperview];
        [self.answerButton3 removeFromSuperview];
    }
    
}

-(void)setViewForQuestion:(Question*)question
{
    self.questionLabel.text = question.questionText;
    
    [self.answerButton1 setTitle:question.answers[0] forState:UIControlStateNormal];
    [self.answerButton2 setTitle:question.answers[1] forState:UIControlStateNormal];
    [self.answerButton3 setTitle:question.answers[2] forState:UIControlStateNormal];
}

-(void)showAlertForTitle:(NSString*)title andMessage:(NSString*)message
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:message delegate:Nil cancelButtonTitle:@"OK!" otherButtonTitles:nil];
    
    [alert show];
}

@end
