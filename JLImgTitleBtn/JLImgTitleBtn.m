//
//  JLImgTitleBtn.m
//  JLImgTitleBtn
//
//  Created by DEMO on 16/9/15.
//  Copyright © 2016年 DEMO. All rights reserved.
//

#import "JLImgTitleBtn.h"

@implementation JLImgTitleBtn

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)setEdge {
    
    self.contentVerticalAlignment = UIControlContentVerticalAlignmentTop;
    self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    
    CGFloat imageTop = self.bounds.size.height - self.imageView.bounds.size.height - self.titleLabel.bounds.size.height;
    
    imageTop /= 2;
    
    CGFloat titleTop = imageTop + self.imageView.bounds.size.height;
    
    CGFloat imageLeft = (self.bounds.size.width - self.imageView.bounds.size.width) / 2;
    
    
    
    CGFloat titleWidth = [self sizeWithString:self.currentTitle
                                         Font:self.titleLabel.font
                                     RectSize:CGSizeMake(0, 0)].width;
    
    
    CGFloat titleLeft = (self.bounds.size.width - titleWidth) / 2 - (self.imageView.bounds.size.width);
    
    self.imageEdgeInsets = UIEdgeInsetsMake(imageTop, imageLeft, 0, 0);
    self.titleEdgeInsets = UIEdgeInsetsMake(titleTop, titleLeft, 0, 0);

}

- (CGSize)sizeWithString:(NSString *)str Font:(UIFont *)font RectSize:(CGSize)size {
    
    if (str.length == 0) {
        return CGSizeZero;
    }
    
    NSDictionary *attribute = @{NSFontAttributeName: font};
    
    CGSize strSize = [str boundingRectWithSize:size
                                       options:NSStringDrawingTruncatesLastVisibleLine |NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                     attributes:attribute
                                        context:nil].size;
    
    return strSize;
    
}

@end
