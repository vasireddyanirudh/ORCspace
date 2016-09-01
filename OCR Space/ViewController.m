//
//  ViewController.m
//  OCR Space
//
//  Created by Anirudh Reddy on 8/30/16.
//  Copyright © 2016 anirudhanirudh reddy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _orc = [[ORCparseViewController alloc]init];
    _parseData = [[NSData alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (IBAction)send:(id)sender {
    
    // Create URL request
    NSURL *url = [NSURL URLWithString:@"https://api.ocr.space/Parse/Image"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    [request setHTTPMethod:@"POST"];
    NSString *boundary = @"randomString";
    [request addValue:[NSString stringWithFormat:@"multipart/form-data; boundary=%@", boundary] forHTTPHeaderField:@"Content-Type"];
    
    NSURLSession *session = [NSURLSession sharedSession];
    

    // Create multipart form body
    NSData *data = [_orc parsedata:_parseData];
    [request setHTTPBody:data];
    
    // Start data session
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSError* myError;
        NSDictionary *result = [NSJSONSerialization JSONObjectWithData:data
                                                               options:kNilOptions
                                                                 error:&myError];
        NSLog(@"returned data : %@", result);
    }];
    [task resume];
}

@end
