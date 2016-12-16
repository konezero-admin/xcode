//
//  ClassA.m
//  test
//
//  Created by IL YEONG KIM on 2016. 12. 16..
//  Copyright © 2016년 IL YEONG KIM. All rights reserved.
//

#import "./include/ClassA.h"

@implementation ClassA
-(id) init{
    self = [super init];
    count++;
    return self;
}

+(int) initCount{
    return count;
}

+(void) initialize{
    count = 0;
}
@end
