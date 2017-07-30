//
//  ViewController.m
//  ScrollView
//
//  Created by necfol on 2017/7/29.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.scrollView.contentSize = CGSizeMake(0, 400);
    UIImageView *imgView = [[UIImageView alloc] init];
    imgView.image = [UIImage imageNamed:@"minion"];
    imgView.frame = CGRectMake(0, 0, imgView.image.size.width, imgView.image.size.height);
    [self.scrollView addSubview:imgView];
    self.scrollView.contentSize = CGSizeMake(imgView.frame.size.width, imgView.frame.size.height);
}
- (IBAction)left {
    self.scrollView.contentOffset = CGPointMake(0, self.scrollView.contentOffset.y);
}

- (IBAction)top {
    self.scrollView.contentOffset = CGPointMake(self.scrollView.contentOffset.x, 0);
}
- (IBAction)bottom {
    self.scrollView.contentOffset = CGPointMake(self.scrollView.contentOffset.x, self.scrollView.contentSize.height - self.scrollView.frame.size.height);
}
- (IBAction)right {
    self.scrollView.contentOffset = CGPointMake(self.scrollView.contentSize.width - self.scrollView.frame.size.width, 0);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
