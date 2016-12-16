//
//  main.m
//  test
//
//  Created by IL YEONG KIM on 2016. 12. 16..
//  Copyright © 2016년 IL YEONG KIM. All rights reserved.
//


#import "./include/Cup.h"
#import "./include/T_Exception.h"
#import "./include/T_OverfException.h"
#import <Foundation/NSString.h>
#import <Foundation/NSException.h>
#import <Foundation/NSAutoreleasePool.h>
#import <stdio.h>
int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Cup *cup = [[Cup alloc] init];
    int i;
    
    // this will work
    for ( i = 0; i < 4; i++ )
    {
        [cup fill];
        [cup print];
    }
    
    //this will throw 예외처리
    for( i = 0; i < 7 ; i++)
    {
        @try{
            [cup fill];
        } @catch (T_Exception *e) {
            printf( "%s ", [[e name] cString]);
        } @catch (T_OverfException *e) {
            printf( "%s ", [[e name] cString]);
        } @finally {
            [cup print];
        }
        
    }

    //throw a generic exception
    @try{
        [cup setLevel: -1];
    } @catch (NSException *e) {
        printf("%s : %s\n", [[e name] cString], [[e reason] cString] );
    }

    //free memory
    [cup release];
    [pool release];
    return 0;
}
