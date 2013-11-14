//
//  ViewController.h
//  calculator
//
//  Created by 野村　孔命 on 13/11/07.
//  Copyright (c) 2013年 University of kitakyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    IBOutlet UILabel *result;
}
@property int num;
@property int newNum;

-(IBAction)numberButton:(id)sender;
-(void)number_cul;




@end
