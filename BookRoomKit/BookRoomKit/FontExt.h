//
//  FontExt.h
//  FCSBookRoomKit
//
//  Created by romance on 2016/11/28.
//  Copyright © 2016年 firstleap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FontExt : NSObject
+ (UIFont *)loadMyCustomFont:(NSString *)name size: (CGFloat)size;
+ (UIFont *) loadMyCustomFont:(NSString *)name size: (CGFloat)size type: (NSString *)type;
@end
