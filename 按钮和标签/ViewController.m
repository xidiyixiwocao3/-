//
//  ViewController.m
//  按钮和标签
//
//  Created by xu on 2018/2/5.
//  Copyright © 2018年 xu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end
//创建UI控件函数
//1313
@implementation ViewController
- (void) creatUI
{
    //ads commit try
    //change on web
    //change on local 
    UILabel* label=[[UILabel alloc]init];
    label.text=@"你好，世界alsflasdlfaljflajsldfja";
    label.frame=CGRectMake(100,100,160,100);
    label.backgroundColor=[UIColor grayColor];
    [self.view addSubview:label];
    label.font=[UIFont systemFontOfSize:24];
    label.textColor=[UIColor blueColor];
    label.shadowColor=[UIColor clearColor];
    label.shadowOffset=CGSizeMake(10,10);
    label.textAlignment=NSTextAlignmentCenter;//文字与label的对齐方式
    label.numberOfLines=0;  //默认为1.其他大于0的行数尽量按照设定，0的话自动按照需要换行
    
}
-(void) createUIRectButton
{
    UIButton* btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];//创建圆角类型的button
    
    btn.frame=CGRectMake(200,300,100,40);
    [btn setBackgroundImage:[UIImage imageNamed:@"7"] forState:UIControlStateNormal];
 //   btn.adjustsImageWhenHighlighted=YES;
    [btn setTitle:@"按钮01 " forState:UIControlStateNormal];
//    [btn setTitle:@"按钮02" forState:UIControlStateHighlighted];
 //   btn.backgroundColor=[UIColor grayColor];
    // [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    // [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateHighlighted];
 //   [btn setTintColor:[UIColor whiteColor]];  //TintColor优先级比较低，而且只能统一设置所有状态下的颜色
    btn.titleLabel.font=[UIFont systemFontOfSize:24];
    
    [self.view addSubview:btn];
}
-(void) createImageBtn
{
    UIButton* btnImage=[UIButton buttonWithType:UIButtonTypeCustom];//按钮类型 自定义
    btnImage.frame=CGRectMake(10,200,100,100);
   
  
    //  [btnImage addTarget:self action:@selector(pressBtn:) forControlEvents: UIControlEventTouchUpInside];//向按钮添加事件函数，按钮点击弹起，且手指在按钮范围内时
   // [btnImage addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];
    
    
    UIButton* newBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    newBtn.frame=CGRectMake(100, 400, 100, 50);
    newBtn.backgroundColor=[UIColor redColor];
    
    [self.view addSubview:newBtn];
    [newBtn setTitle:@"newBtn" forState:UIControlStateNormal];
    [newBtn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:btnImage];
    btnImage.tag=101;
    newBtn.tag=102;
    
}
-(void) touchDown
{
    NSLog(@"touchDown");
}
-(void) pressBtn:(UIButton*)btn//带参数的动作函数
{
    if(btn.tag==101){
        NSLog(@"btnImg been pressed");
    }
    if(btn.tag==102){
        NSLog(@"newBtn pressed");
    }
}
-(void) pressBtn
{
    NSLog(@"anniu anxiale ");
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self creatUI];
    [self createUIRectButton];
    [self createImageBtn];
    UIView* view=[[UIView alloc]init]; //创建UIView对象
    view.frame=CGRectMake(100,500,200,100);
    view.backgroundColor=[UIColor orangeColor];
    [self.view addSubview:view];
    view.hidden=NO;  //YES 不显示
    view.opaque=NO; //设置是否显示不透明
    //  view.alpha=0.3;  //设置透明度 1 不透明， 0 透明。，
    
    
    //    [view removeFromSuperview];
    //self.view.backgroundColor=[UIColor grayColor];
    
    UIView* view01=[[UIView alloc]init];
    view01.frame=CGRectMake(200,500,100,200);
    view01.backgroundColor=[UIColor yellowColor];
    [self.view addSubview:view01];
    [self.view bringSubviewToFront:view];//调整某视图到最前方
    [self.view sendSubviewToBack:view];//调整到后方
    UIView* viewFront=self.view.subviews[0];//subviews包含一个视图的所有子视图的数组
    if(viewFront==view)
    {
        NSLog(@"======");
    }
    
    UIButton* button_1=[UIButton buttonWithType:UIButtonTypeCustom];
    
    
  //  [button_1 setBackgroundImage:[UIImage imageNamed:@"7"] forState:UIControlStateNormal];
    
    [button_1 setImage:[self imageWithImageSimple:[UIImage imageNamed:@"6.jpeg"] scaledToSize:CGSizeMake(30, 30)] forState:UIControlStateNormal];
    [button_1 setBackgroundColor:[UIColor yellowColor]];
    [button_1 setTitle:@"trrrrrrrrrrry" forState:UIControlStateNormal];
    [button_1 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    button_1.frame=CGRectMake(50, 300, 100, 100);
    
    [button_1 setImageEdgeInsets:UIEdgeInsetsMake(40,40, 40,40)];
 //   [button_1 setTitleEdgeInsets:UIEdgeInsetsMake(50, 0, 0, 0)];
 //   button_1.adjustsImageWhenHighlighted=NO;
    [self.view addSubview:button_1];
    NSLog(@"edgeinset=%@",NSStringFromUIEdgeInsets(button_1.imageEdgeInsets));
    NSLog(@"edgeinset=%@",NSStringFromUIEdgeInsets(button_1.titleEdgeInsets));
    
    
}
- (UIImage*)imageWithImageSimple:(UIImage*)image scaledToSize:(CGSize)newSize

{
    
    // Create a graphics image context
    
    UIGraphicsBeginImageContext(newSize);
    
    
    
    // Tell the old image to draw in this new context, with the desired
    
    // new size
    
    [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    
    
    
    // Get the new image from the context
    
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    
    
    // End the context
    
    UIGraphicsEndImageContext();
    
    
    
    // Return the new image.
    
    return newImage;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

