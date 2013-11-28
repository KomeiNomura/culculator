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

-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if(self != nil) {
        _inputNumNew = 0;
        _state = 0;
        _flag = 0;
        _point = 1;
    }
    return self;
}


-(IBAction)numberButton:(id)sender{
    UIButton* pushNum = sender;  //senderをpushNumにキャスト
    _num = pushNum.tag;   //pushNumのtagに押された数字が入っている
    if(_flag == 0){
        [self numberCal];
    }else{
        _point = _point/10;
        [self deciminalPoint];
    }
    
    result.text = [NSString stringWithFormat:@"%f",_inputNumNew];
}


-(IBAction)decimalPointButton{
    _flag = 1;
}

-(void)deciminalPoint{
    _inputNumNew = _inputNumNew+_num*_point;
}

-(void)numberCal{
    _inputNumNew = _inputNumNew*10+_num;
}


-(IBAction)clearButton{
    _resultNum = 0;
    _inputNumNew = 0;
    result.text = [NSString stringWithFormat:@"%f",_resultNum];
    _state = 0;
    _flag = 0;
}



                                                                                                                   
-(void)addCal{
    _resultNum = _inputNumOld+_inputNumNew;
    _inputNumOld = _resultNum;
}

-(void)minusCal{
    _resultNum = _inputNumOld-_inputNumNew;
    _inputNumOld = _resultNum;
}

-(void)multiCal{
    _resultNum = _inputNumOld*_inputNumNew;
    _inputNumOld = _resultNum;
}

-(void)diviCal{
    if(_inputNumNew == 0){
        _resultNum = 0;
    }else{
    _resultNum = _inputNumOld/_inputNumNew;
    _inputNumOld = _resultNum;
    }
}

-(IBAction)equalButton{
    [self calculateNumber];
}

-(IBAction)culType:(id)sender{
    if(_state == NONE){
        _inputNumOld = _inputNumNew;
        _inputNumNew = 0;
    }else{
    [self calculateNumber];
    }
    UIButton* pushcul = sender;
    _state = pushcul.tag;
}


-(void)calculateNumber{
    switch ([self state]){
        case NONE:             ////一回目の入力のときの処理
            break;
        case PULUS:
            [self addCal];
            break;
        case MINUS:
            [self minusCal];
            break;
        case MULTI:
            [self multiCal];
            break;
        case DIVI:
            [self diviCal];
            break;
    }
    result.text = [NSString stringWithFormat:@"%f",_inputNumOld];
    _inputNumNew = 0;
    _flag = 0;
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
