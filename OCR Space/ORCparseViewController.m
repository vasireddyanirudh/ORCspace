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
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSData*)parsedata:(NSData*)data{
    ApiWrapper *apiW = [[ApiWrapper alloc]init];
    data = [apiW createBody:data];
    return data;
}


@end
