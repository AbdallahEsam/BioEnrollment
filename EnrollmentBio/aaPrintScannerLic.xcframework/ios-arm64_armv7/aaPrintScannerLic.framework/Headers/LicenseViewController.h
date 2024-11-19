//
//  LIcenseViewController.h
//  aaPrintScanner
//
//  Created by aaTech on 6/29/20.
//  Copyright © 2020 aaTech. All rights reserved.
//

#ifndef LicenseViewController_h
#define LicenseViewController_h

#import <UIKit/UiKit.h>
#import <Foundation/Foundation.h>

@class LicenseViewController;

@protocol LicenseViewDelegate <NSObject>
-(void)onLaunched;
@end

@interface LicenseViewController : UIViewController
-(void)setDelegate:(id<LicenseViewDelegate>)delegate;
@end

#endif /* LIcenseViewController_h */
