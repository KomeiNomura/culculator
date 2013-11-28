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
@property double num;
@property double point;
@property double inputNumNew;
@property double inputNumOld;
@property double resultNum;
@property int flag;

@property enum{
    NONE,PULUS,MINUS,MULTI,DIVI
} state;
    


-(IBAction)numberButton:(id)sender;
-(void)numberCal;
-(void)addCal;
-(void)minusCal;
-(void)multiCal;
-(void)diviCal;
-(IBAction)equalButton;
-(IBAction)clearButton;
-(IBAction)culType:(id)sender;
-(void)calculateNumber;
-(IBAction)decimalPointButton;
-(void)deciminalPoint;
@end
