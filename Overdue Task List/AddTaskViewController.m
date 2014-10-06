//
//  AddTaskViewController.m
//  Overdue Task List
//
//  Created by Andrew Bell on 10/5/14.
//  Copyright (c) 2014 Andrew Bell. All rights reserved.
//

#import "AddTaskViewController.h"

@interface AddTaskViewController ()

@end

@implementation AddTaskViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)cancelButtonPressed:(UIButton *)sender
{
    [self.delegate didCancel];
}

- (IBAction)addTaskButtonPressed:(UIButton *)sender
{
    [self.delegate didAddTask:[self returnNewTask]];
}

#pragma mark - Helper Method

-(Task *)returnNewTask
{
    Task *addedTask = [[Task alloc]init];
    addedTask.taskTitle = self.textField.text;
    addedTask.taskDescription = self.textView.text;
    addedTask.taskDate = self.datePIcker.date;
    addedTask.taskIsCompleted = NO;
    
    return addedTask;
    
}
@end
