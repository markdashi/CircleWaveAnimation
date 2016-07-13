//
//  UIViewAdditions.m
//
//  Created by mark
//  Copyright (c) 2016年 mark. All rights reserved.
//

#import "UIViewAdditions.h"

@implementation UIView(Frame)

- (void) setTop:(CGFloat)t {
    
	self.frame = CGRectMake(self.left, t, self.width, self.height);
}
- (CGFloat) top {
    
	return self.frame.origin.y;
}
- (void) setBottom:(CGFloat)b {
    
	self.frame = CGRectMake(self.left,b-self.height,self.width,self.height);
}
- (CGFloat) bottom {
    
	return self.frame.origin.y + self.frame.size.height;
}
- (void) setLeft:(CGFloat)l {
    
	self.frame = CGRectMake(l,self.top,self.width,self.height);
}
- (CGFloat) left {
    
	return self.frame.origin.x;
}
- (void) setRight:(CGFloat)r {
    
	self.frame = CGRectMake(r-self.width,self.top,self.width,self.height);
}
- (CGFloat) right {
    
	return self.frame.origin.x + self.frame.size.width;
}
- (void) setWidth:(CGFloat)w {
    
	self.frame = CGRectMake(self.left, self.top, w, self.height);
}
- (CGFloat) width {
    
	return self.frame.size.width;
}
- (void) setHeight:(CGFloat)h {
    
	self.frame = CGRectMake(self.left, self.top, self.width, h);
}
- (CGFloat) height {
    
	return self.frame.size.height;
}
- (CGFloat) centerx {
    
    return self.left +self.width/2;
}
- (CGFloat) centery {
    
    return self.top + self.height/2;
}
- (void)setCenterx:(CGFloat)centerx
{
    self.frame = CGRectMake(centerx-self.width/2, self.top, self.width, self.height);
}
- (void)setCentery:(CGFloat)centery
{
    self.frame = CGRectMake(self.left, centery-self.height/2, self.width, self.height);
}


@end



