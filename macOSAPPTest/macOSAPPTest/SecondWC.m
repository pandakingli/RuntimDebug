//
//  SecondWC.m
//  macOSAPPTest
//
//  Created by lining on 2017/11/20.
//  Copyright © 2017年 biubiublue. All rights reserved.
//

#import "SecondWC.h"
#import "AppDelegate.h"
@interface SecondWC ()

@end

@implementation SecondWC
- (void)dealloc
{
    NSLog(@"SecondWC - dealloc");
}
- (void)windowDidLoad
{
    [super windowDidLoad];
    self.window.backgroundColor = [NSColor yellowColor];
    self.window.title = @"WC2";
}
- (IBAction)backBTN:(id)sender
{
    AppDelegate *appDelegate = (AppDelegate *)[[NSApplication sharedApplication] delegate];
    
    [self.window close];
    
    [appDelegate.mainWindowController.window makeKeyAndOrderFront:nil];
}

@end
