//
//  BlinkingLabel.m
//  Pods
//
//  Created by Deepanshi Gupta on 10/02/16.
//
//

#import "BlinkingLabel.h"

@implementation BlinkingLabel

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // init labels
    }
    return self;
}

-(void) startBlinking
{
    [UIView animateWithDuration:0.25 delay:0.0 options: UIViewAnimationOptionAutoreverse| UIViewAnimationOptionRepeat animations:^{
        self.alpha=0;
    }completion:nil];
}

-(void) stopBlinking
{
    self.alpha=1;
    [self.layer removeAllAnimations];
}

@end
