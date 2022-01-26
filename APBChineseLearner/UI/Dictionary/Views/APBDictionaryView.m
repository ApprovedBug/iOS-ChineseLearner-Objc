//
//  APBDictionaryView.m
//  APBChineseLearner
//
//  Created by ApprovedBug on 09/01/2022
//

#import "APBDictionaryView.h"
#import "FLKAutoLayout.h"

@interface APBDictionaryView() {
    UITextField *_chineseTextField;
    UITextField *_pinyinTextField;
    UITextField *_englishTextField;
    UIButton *_addButton;
}

@end

@implementation APBDictionaryView

#pragma mark - Subviews

- (UITextField *)chineseTextField {
    if (_chineseTextField == nil) {
        _chineseTextField = [[UITextField alloc] init];
        [_chineseTextField setPlaceholder:@"Chinese text"];
        [_chineseTextField setBorderStyle:UITextBorderStyleRoundedRect];
    }
    return _chineseTextField;
}

- (UITextField *)pinyinTextField {
    if (_pinyinTextField == nil) {
        _pinyinTextField = [[UITextField alloc] init];
        [_pinyinTextField setPlaceholder:@"Pinyin"];
        [_pinyinTextField setBorderStyle:UITextBorderStyleRoundedRect];
    }
    return _pinyinTextField;
}

- (UITextField *)englishTextField {
    if (_englishTextField == nil) {
        _englishTextField = [[UITextField alloc] init];
        [_englishTextField setPlaceholder:@"English translation"];
        [_englishTextField setBorderStyle:UITextBorderStyleRoundedRect];
    }
    return _englishTextField;
}

- (UIButton *)addButton {
    if (_addButton == nil) {
        _addButton = [[UIButton alloc] init];
        [_addButton setTitle:@"Add word" forState:UIControlStateNormal];
        [_addButton setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
        [_addButton addTarget:self action:@selector(addTapped:) forControlEvents:UIControlEventTouchUpInside];

    }
    return _addButton;
}

#pragma mark - View setup

- (void)setupSubviews {
    [self addSubview:self.chineseTextField];
    [self addSubview:self.pinyinTextField];
    [self addSubview:self.englishTextField];
    [self addSubview:self.addButton];
}

- (void)setupAutolayout {

    // chinese text field
    [self.chineseTextField alignTopEdgeWithView:self predicate:@"64"];
    [self.chineseTextField alignLeading:@"12" trailing:@"-12" toView:self];
    [self.chineseTextField constrainHeight:@"32"];

    // pinyin text field
    [self.pinyinTextField alignAttribute:NSLayoutAttributeTop
                             toAttribute:NSLayoutAttributeBottom
                                  ofView:self.chineseTextField
                               predicate:@"12"];
    [self.pinyinTextField alignLeading:@"12" trailing:@"-12" toView:self];
    [self.pinyinTextField constrainHeight:@"32"];

    // english text field
    [self.englishTextField alignAttribute:NSLayoutAttributeTop
                              toAttribute:NSLayoutAttributeBottom
                                   ofView:self.pinyinTextField
                                predicate:@"12"];
    [self.englishTextField alignLeading:@"12" trailing:@"-12" toView:self];
    [self.englishTextField constrainHeight:@"32"];

    // add button
    [self.addButton alignAttribute:NSLayoutAttributeTop
                       toAttribute:NSLayoutAttributeBottom
                            ofView:self.englishTextField
                         predicate:@"12"];
    [self.addButton alignLeadingEdgeWithView:self predicate:@"12"];
}

#pragma mark - Private methods

- (void)addTapped:(UIButton *)sender {
    if ([_delegate respondsToSelector:@selector(addTappedWithChinese:pinyin:english:)]) {
        [_delegate addTappedWithChinese:self.chineseTextField.text
                                 pinyin:self.pinyinTextField.text
                                english:self.englishTextField.text];
    }
}

@end
