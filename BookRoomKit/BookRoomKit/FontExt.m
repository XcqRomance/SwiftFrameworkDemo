//
//  FontExt.m
//  FCSBookRoomKit
//
//  Created by romance on 2016/11/28.
//  Copyright © 2016年 firstleap. All rights reserved.
//

#import "FontExt.h"
#import <CoreText/CoreText.h>
//#import "Path.h"

@implementation FontExt

+ (UIFont *) loadMyCustomFont:(NSString *)name size: (CGFloat)size {
  return [self loadMyCustomFont:name size:size type:@"ttf"];
}

+ (UIFont *) loadMyCustomFont:(NSString *)name size: (CGFloat)size type: (NSString *)type {
  NSString *fontPath = [[NSBundle bundleWithIdentifier:@"xcqromance.BookRoomKit"] pathForResource:name ofType:type];
  NSData *inData = [NSData dataWithContentsOfFile:fontPath];
  CFErrorRef error;
  CGDataProviderRef provider = CGDataProviderCreateWithCFData((__bridge CFDataRef)inData);
  CGFontRef font = CGFontCreateWithDataProvider(provider);
  if (! CTFontManagerRegisterGraphicsFont(font, &error)) {
    CFStringRef errorDescription = CFErrorCopyDescription(error);
    NSLog(@"Failed to load font: %@,%@", errorDescription,name);
    CFRelease(errorDescription);
  }
  CFRelease(font);
  CFRelease(provider);
  NSString *fontName = (__bridge NSString *)CGFontCopyPostScriptName(font);
  UIFont* uifont = [UIFont fontWithName:fontName size:size];
  return uifont;
}

@end
