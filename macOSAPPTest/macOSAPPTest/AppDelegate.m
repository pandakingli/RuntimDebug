//
//  AppDelegate.m
//  macOSAPPTest
//
//  Created by lining on 2017/11/20.
//  Copyright © 2017年 biubiublue. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    _mainWindowController = [[MainWC alloc] initWithWindowNibName:NSStringFromClass([MainWC class])];
    
    //让显示的位置居于屏幕的中心
    [[_mainWindowController window] center];
    //前置显示窗口
    [_mainWindowController.window orderFront:nil];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
