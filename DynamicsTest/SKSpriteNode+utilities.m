//
//  SKSpriteNode+utilities.m
//  DynamicsTest
//
//  Created by Weston Hanners on 3/29/14.
//  Copyright (c) 2014 Hanners Software. All rights reserved.
//

#import "SKSpriteNode+utilities.h"

@implementation SKSpriteNode (utilities)

- (CGPoint)center {
  return CGPointMake(self.size.width * 0.5, self.size.height * 0.5);
}

- (void)setCenter:(CGPoint)center {
  [self setPosition:CGPointMake(center.x, center.y)];
}

- (CGRect)bounds {
  return CGRectMake(self.frame.origin.x,
                    self.frame.origin.y,
                    self.size.width,
                    self.size.height);
}

- (void)setTransform:(CGAffineTransform)transform {
    //NSLog(@"%@", NSStringFromCGAffineTransform(transform));
}

- (CGAffineTransform)transform {
  return CGAffineTransformIdentity;
}
@end
