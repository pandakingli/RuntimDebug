//
//  MainWC.h
//  macOSAPPTest
//
//  Created by lining on 2017/11/20.
//  Copyright © 2017年 biubiublue. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "FirstWC.h"
@interface MainWC : NSWindowController
@property (nonatomic, strong) FirstWC *nextWindowController;
@end
