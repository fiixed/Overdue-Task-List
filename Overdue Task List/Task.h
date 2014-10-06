//
//  Task.h
//  Overdue Task List
//
//  Created by Andrew Bell on 10/6/14.
//  Copyright (c) 2014 Andrew Bell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Task : NSObject

@property (strong, nonatomic) NSString *taskTitle;
@property (strong, nonatomic) NSString *taskDescription;
@property (strong, nonatomic) NSDate *taskDate;
@property (nonatomic) BOOL taskIsCompleted;

-(instancetype)initWithData:(NSDictionary *)data;

@end
