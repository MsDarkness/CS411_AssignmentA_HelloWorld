//
//  main.m
//  CS411_AssignmentA_HelloWorld
//
//  Created by Iris Markofsky on 8/28/13.
//  Copyright (c) 2013 Iris Markofsky. All rights reserved.
//
#import <stdio.h>
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        char str[21];           // 21 since input msg states up to 20 chars & leaving room for NULL
        
        NSDate *currTime = [[NSDate alloc] init]; // initialize to grab time
        NSDateFormatter *currTimeFormat = [[NSDateFormatter alloc] init];
        
        [currTimeFormat setDateFormat:@"MMM dd, yyyy HH:mm"];
        NSString *currTimeStr = [currTimeFormat stringFromDate:currTime];
        
        
        printf("Hello World!");
//        NSLog(@"\nHello, World!");
        
        printf("Enter your string (up to 20 characters): ");        // request user input
        scanf("%s", str);                                           //Store user input into str buffer        
        NSString *userInput = [NSString stringWithUTF8String:str];

        printf("User has entered: \"%s", [userInput cStringUsingEncoding:NSUTF8StringEncoding]);    //output user string
        printf("\" on ");
        
//        NSLog(@"%@", currTime);
        printf("%s", [currTimeStr cStringUsingEncoding:NSUTF8StringEncoding]);
        
        
    }
    return 0;
}