//
//  ViewController.m
//  UIAccelerometerSample
//
//  Created by 廣川政樹 on 2013/04/01.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  //加速度センサーを定義
  UIAccelerometer *accelerometer = [UIAccelerometer sharedAccelerometer];
  //更新間隔を設定
  accelerometer.updateInterval = 0.02;
  //デリゲートを selfに指定
  accelerometer.delegate = self;
}

- (void)accelerometer:(UIAccelerometer *)accelerometer
        didAccelerate:(UIAcceleration *)acceleration {
  //X軸の傾き度合いをラベルに表示
  self.xLabel.text = [NSString stringWithFormat:@"x=%f", acceleration.x];
  //Y軸の傾き度合いをラベルに表示
  self.yLabel.text = [NSString stringWithFormat:@"y=%f", acceleration.y];
  //Z軸の傾き度合いをラベルに表示
  self.zLabel.text = [NSString stringWithFormat:@"z=%f", acceleration.z];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

@end
