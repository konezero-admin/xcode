//
//  main.m
//  test
//
//  Created by IL YEONG KIM on 2016. 12. 16..
//  Copyright © 2016년 IL YEONG KIM. All rights reserved.
//

#import <stdio.h>
#import "./include/ClassA.h"

int main(int argc, const char * argv[]) {
    /*
    @autoreleasepool {
        
    }
     */
    
    ClassA *c1 = [[ClassA alloc] init];
    ClassA *c2 = [[ClassA alloc] init];
    
    //print count
    printf( "ClassA count: %i\n", [ClassA initCount]);
    
    ClassA *c3 = [[ClassA alloc] init];

    //print count again
    printf( "ClassA count: %i\n", [ClassA initCount]);
    
    [c1 release];
    [c2 release];
    [c3 release];
    return 0;
}
