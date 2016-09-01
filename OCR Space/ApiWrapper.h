//
//  ApiWrapper.h
//  OCR Space
//
//  Created by Anirudh Reddy on 8/30/16.
//  Copyright © 2016 anirudhanirudh reddy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ApiWrapper : UIViewController
- (NSData *) createBodyWithBoundary:(NSString *)boundary parameters:(NSDictionary *)parameters imageData:(NSData*)data filename:(NSString *)filename;

@end
