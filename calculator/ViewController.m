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
        _inputNumNew = 10;
    }
    return self;
}


-(IBAction)numberButton:(id)sender{
    UIButton* pushNum = sender;  //senderをpushNumにキャスト
    _num = pushNum.tag;   //pushNumのtagに押された数字が入っている
    [self numberCul];
    result.text = [NSString stringWithFormat:@"%d",_inputNumNew];
}





-(void)numberCul{
    _inputNumNew = _inputNumNew*10+_num;
}


-(IBAction)clearButton{
    _resultNum = 0;
    _inputNumNew = 0;
    result.text = [NSString stringWithFormat:@"%d",_resultNum];}

-(void)addCul{
    _resultNum = _resultNum+_inputNumNew;
}

-(void)minusCul{
    _resultNum = _resultNum-_inputNumNew;
}

-(void)multiCul{
    _resultNum = _resultNum*_inputNumNew;
}

-(void)diviCul{
    _resultNum = _resultNum/_inputNumNew;
}

-(IBAction)equalButton{
    switch ([self state]){
        case PULUS:
            [self addCul];
            break;
        case MINUS:
            [self minusCul];
            break;
        case MULTI:
            [self multiCul];
            break;
        case DIVI:
            [self diviCul];
            break;
    }
    
    result.text = [NSString stringWithFormat:@"%d",_resultNum];

}

-(IBAction)culType:(id)sender{
    UIButton* pushcul = sender;
    _state = pushcul.tag;
    
    _resultNum = _inputNumNew;
    _inputNumNew = 0;
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
