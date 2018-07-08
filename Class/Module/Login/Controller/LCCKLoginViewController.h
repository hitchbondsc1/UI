//
//  MLPViewController.h
//  MLPAutoCompleteDemo
//
//  Created by Eddy Borja on 1/23/13.
//  Copyright (c) 2013 Mainloop. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MLPAutoCompleteTextFieldDelegate.h"


@class DEMODataSource;
@class MLPAutoCompleteTextField;


//typedef void (^LCCKClientIDHandler)(NSString *clientID);
typedef void (^LCCKClientIDHandler)(NSString *clientID, NSString *targetClientID, NSString *GroupID, NSString *GroupName);

@interface LCCKLoginViewController : UIViewController <UITextFieldDelegate, MLPAutoCompleteTextFieldDelegate>


@property (weak, nonatomic) IBOutlet UITextField *abcde;
@property (weak, nonatomic) IBOutlet UITextField *abcGroupID;
@property (weak, nonatomic) IBOutlet UITextField *abcGroupName;

@property (strong, nonatomic) IBOutlet DEMODataSource *autocompleteDS;

@property (weak) IBOutlet MLPAutoCompleteTextField *autocompleteTextField;

@property (weak, nonatomic) IBOutlet UISwitch *buShowTarBar;
- (IBAction)buShowTabBarAction:(UISwitch *)sender;

@property (weak, nonatomic) IBOutlet UISwitch *buDirectTalk;
- (IBAction)unDirectTalkAction:(UISwitch *)sender;

@property (strong, nonatomic) IBOutlet UILabel *demoTitle;
@property (strong, nonatomic) IBOutlet UILabel *author;
@property (nonatomic, assign, getter=isAutoLogin) BOOL autoLogin;

- (void)setClientIDHandler:(LCCKClientIDHandler)clientIDHandler;


@end
