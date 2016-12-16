//
//  Cup.h
//  test
//
//  Created by IL YEONG KIM on 2016. 12. 16..
//  Copyright © 2016년 IL YEONG KIM. All rights reserved.
//

#ifndef Cup_h
#define Cup_h

#import <Foundation/NSObject.h>
@interface Cup: NSObject{
    int level;
}
-(int) level;
-(void) setLevel: (int) l;
-(void) fill;
-(void) empty;
-(void) print;
@end
#endif /* Cup_h */
