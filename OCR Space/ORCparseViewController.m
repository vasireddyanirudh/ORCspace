//
//  ORCparseViewController.m
//  OCR Space
//
//  Created by Anirudh Reddy on 8/30/16.
//  Copyright © 2016 anirudhanirudh reddy. All rights reserved.
//

#import "ORCparseViewController.h"
#import "ApiWrapper.h"
@interface ORCparseViewController ()
@end

@implementation ORCparseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _apiWrapperVC = [[ApiWrapper alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSData*)parsedata:(NSData*)data{
    
    _apiWrapperVC = [[ApiWrapper alloc]init];

    // Image file and parameters
    NSString *boundary = @"randomString";
    NSData *imageData = UIImageJPEGRepresentation([UIImage imageNamed:@"Acorn-Analytics"], 0.6);
    NSDictionary *parametersDictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                                          @"4fea1974b688957", @"apikey",
                                          @"True", @"isOverlayRequired",
                                          @"eng", @"language", nil];
    data = [_apiWrapperVC createBodyWithBoundary:boundary
                                    parameters:parametersDictionary
                                     imageData:imageData
                                      filename:@"Acorn-Analytics.png"];
    
    return data;
}


@end
