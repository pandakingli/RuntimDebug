//
//  FirstWC.m
//  macOSAPPTest
//
//  Created by lining on 2017/11/20.
//  Copyright © 2017年 biubiublue. All rights reserved.
//

#import "FirstWC.h"
#import "AppDelegate.h"
#import "SecondWC.h"
@interface FirstWC ()
@property (nonatomic, strong) SecondWC *nextWindowController;
@end

@implementation FirstWC
- (void)dealloc
{
    NSLog(@"FirstWC - dealloc");
}
- (void)windowDidLoad {
    [super windowDidLoad];
    
    self.window.backgroundColor = [NSColor blueColor];
    self.window.title = @"WC1";
}
- (IBAction)backBTN:(id)sender
{
    AppDelegate *appDelegate = (AppDelegate *)[[NSApplication sharedApplication] delegate];
    
    [self.window close];
    
    [appDelegate.mainWindowController.window makeKeyAndOrderFront:nil];
}
- (IBAction)jumpWC:(id)sender
{
    _nextWindowController = [[SecondWC alloc] initWithWindowNibName:NSStringFromClass([SecondWC class])];
    
    //显示需要跳转的窗口
    [_nextWindowController.window orderFront:nil];
    
    //关闭当前窗口
    [self.window orderOut:nil];
}

@end
