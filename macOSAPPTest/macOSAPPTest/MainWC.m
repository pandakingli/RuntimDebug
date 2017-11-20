//
//  MainWC.m
//  macOSAPPTest
//
//  Created by lining on 2017/11/20.
//  Copyright © 2017年 biubiublue. All rights reserved.
//

#import "MainWC.h"

@interface MainWC ()

@end

@implementation MainWC

- (void)windowDidLoad
{
    [super windowDidLoad];
    self.window.backgroundColor = [NSColor redColor];
    self.window.title = @"主界面";
}
- (IBAction)jumpBTN:(id)sender
{
    _nextWindowController = [[FirstWC alloc] initWithWindowNibName:NSStringFromClass([FirstWC class])];
    
    //显示需要跳转的窗口
    [_nextWindowController.window orderFront:nil];
    
    //关闭当前窗口
    [self.window orderOut:nil];
}

@end
