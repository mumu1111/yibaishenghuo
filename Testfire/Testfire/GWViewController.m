//
//  GWViewController.m
//  Testfire
//
//  Created by 木木 on 15-9-30.
//  Copyright (c) 2015年 Alibaba. All rights reserved.
//

#import "GWViewController.h"

@interface GWViewController ()

@end

@implementation GWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImageView*imageview=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
    imageview.image=[UIImage imageNamed:@"枫叶1.jpg"];
    [self.view addSubview:imageview];
    lable=[[UILabel alloc]initWithFrame:CGRectMake(180, 50, 60, 35)];
    lable.backgroundColor=[UIColor magentaColor];
    [imageview addSubview:lable];
	// Do any additional setup after loading the view, typically from a nib.
//    UIActivityIndicatorView风火轮用于网络加载等到界面显示
    //创建风火轮
   activity=[[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    activity.frame=CGRectMake(180,10, 200, 200);
    activity.color=[UIColor cyanColor];
    //开始加载数据,风火轮转动
    [activity startAnimating];
    lable.text=@"load.....";
    [self performSelector:@selector(done) withObject:nil afterDelay:4.0f];
    [imageview addSubview:activity];
}
-(void)done
{//判断风火轮是否在转
    if ([activity isAnimating])
    {
        lable.text=@"";
        //如果载转动就停止转动
        [activity stopAnimating];
    }

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
