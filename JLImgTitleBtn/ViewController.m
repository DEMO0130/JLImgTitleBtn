//
//  ViewController.m
//  JLImgTitleBtn
//
//  Created by DEMO on 16/9/15.
//  Copyright © 2016年 DEMO. All rights reserved.
//

#import "ViewController.h"

#import "JLImgTitleBtn.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    JLImgTitleBtn * btn = ({
        JLImgTitleBtn * btn = [[JLImgTitleBtn alloc] initWithFrame:CGRectMake(50, 50, 100, 50)];
        btn.titleLabel.textColor = [UIColor redColor];
        btn.backgroundColor = [UIColor blueColor];
        [btn setTitle:@"图文按钮" forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"collection_selected"] forState:UIControlStateNormal];
        btn;
    });
    
    [self.view addSubview:btn];
    
    [btn setEdge];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
