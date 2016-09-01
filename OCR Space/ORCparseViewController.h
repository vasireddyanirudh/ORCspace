//
//  ORCparseViewController.h
//  OCR Space
//
//  Created by Anirudh Reddy on 8/30/16.
//  Copyright © 2016 anirudhanirudh reddy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ApiWrapper.h"
@interface ORCparseViewController : UIViewController
@property(strong,nonatomic) ApiWrapper *apiWrapperVC;

-(NSData*)parsedata:(NSData*)data;
@end
