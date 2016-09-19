//
//  ApiModel.h
//  OCR Space
//
//  Created by Anirudh Reddy on 9/18/16.
//  Copyright © 2016 anirudhanirudh reddy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ApiModel : NSObject

@property(weak,nonatomic) NSString *boundary;
@property(weak,nonatomic) NSDictionary *parametersDictionary;
@end
