//
//  Task.m
//  Overdue Task List
//
//  Created by Andrew Bell on 10/6/14.
//  Copyright (c) 2014 Andrew Bell. All rights reserved.
//

#import "Task.h"

@implementation Task

-(instancetype)init
{
    self = [self initWithData:nil];
    return self;
}

-(instancetype)initWithData:(NSDictionary *)data
{
    self = [super init];
    
    if (self) {
        self.taskTitle = data[TASK_TITLE];
        self.taskDescription = data[TASK_DESCRIPTION];
        self.taskDate = data[TASK_DATE];
        self.taskIsCompleted = [data[TASK_COMPLETION]boolValue];
    }
    return self;
}

@end
