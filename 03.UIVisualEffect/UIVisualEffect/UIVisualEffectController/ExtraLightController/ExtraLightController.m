//
//  ExtraLightController.m
//  UIVisualEffect
//
//  Created by Cain on 12/9/16.
//  Copyright © 2016年 Cain. All rights reserved.
//

#import "ExtraLightController.h"

@interface ExtraLightController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ExtraLightController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = NSStringFromClass(self.class);
    
    UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleExtraLight];
    
    UIVisualEffectView *visualEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    
    visualEffectView.alpha = 0.5;
    
    visualEffectView.frame = self.imageView.bounds;
    
    [self.imageView addSubview:visualEffectView];
}

@end
