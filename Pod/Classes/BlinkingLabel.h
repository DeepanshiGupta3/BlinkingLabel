//
//  BlinkingLabel.h
//  Pods
//
//  Created by Deepanshi Gupta on 10/02/16.
//
//

#import <UIKit/UIKit.h>

@interface BlinkingLabel : UILabel
- (id)initWithFrame:(CGRect)frame;
-(void) startBlinking;
-(void) stopBlinking;
@end
