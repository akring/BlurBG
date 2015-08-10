//
//  AppDelegate.h
//  BlurBG
//
//  Created by akring on 15/8/10.
//  Copyright (c) 2015年 akring. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlurBackground.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    
    BlurBackground *bg;
}

@property (strong, nonatomic) UIWindow *window;


@end

