//
//  ViewController.m
//  calculator
//
//  Created by 野村　孔命 on 13/11/07.
//  Copyright (c) 2013年 University of kitakyu. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

-(id)initWithNumber
{
    self = [super init];
    if(self != nil) {
        _newNum = 10;
    }
    return self;
}


-(IBAction)numberButton:(id)sender{
    UIButton* pushNum = sender;  //senderをpushnumbuttonにキャスト
    _num = pushNum.tag;   //pushNumのtagに押された数字が入っている
    [self number_cul];
    result.text = [NSString stringWithFormat:@"%d",_newNum];
}

-(void)number_cul{
    _newNum = _newNum*10+_num;
}






- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
