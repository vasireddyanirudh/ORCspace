//
//  ApiModel.m
//  OCR Space
//
//  Created by Anirudh Reddy on 9/18/16.
//  Copyright © 2016 anirudhanirudh reddy. All rights reserved.
//

#import "ApiModel.h"

@implementation ApiModel
-(id)init{
    
    self.boundary = @"randomString";
    self.parametersDictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                                          @"4fea1974b688957", @"apikey",
                                          @"True", @"isOverlayRequired",
                                          @"eng", @"language", nil];
    return self;
}
@end
