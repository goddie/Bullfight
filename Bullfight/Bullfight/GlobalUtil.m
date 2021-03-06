//
//  GlobalUtil.m
//  Bullfight
//
//  Created by goddie on 15/6/14.
//  Copyright (c) 2015年 goddie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GlobalUtil.h"
#import "AppDelegate.h"

@implementation GlobalUtil: NSObject

+ (UIColor*) colorWithArray:(NSString*)rgb
{
    NSArray* arr = [rgb componentsSeparatedByString: @","];
    
    UIColor* color = [UIColor colorWithRed:  [[arr objectAtIndex:0] floatValue]/255.0 green:[[arr objectAtIndex:1] floatValue]/255.0 blue:[[arr objectAtIndex:2] floatValue]/255.0 alpha:1];
    
    return color;
}


+ (void)set9PathImage:(UIView *)view imageName:(NSString*)imageName top:(CGFloat)top right:(CGFloat)right
{
    UIImage* image = [UIImage imageNamed:imageName];
    
    UIEdgeInsets insets = UIEdgeInsetsMake(top, right, top, right);
    // 指定为拉伸模式，伸缩后重新赋值
    image = [image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    
    [view setBackgroundColor:[UIColor clearColor]];
    
    UIImageView* imageView = [[UIImageView alloc] initWithImage:image];
    imageView.frame = CGRectMake(0, 0, view.frame.size.width, view.frame.size.height);
    
    [view addSubview:imageView];
    
    [view sendSubviewToBack:imageView];
}


+ (void)setButtonColor:(UIButton*)button color:(NSString*)color
{
    UIColor* newColor= [self colorWithArray:color];
    
    [button setTitleColor:newColor forState:UIControlStateNormal];
}

+ (UIBarButtonItem*)getBarButton:(NSString*)imageName target:(id)target action:(SEL)action
{
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    //[back setTitle:@"已改" forState:UIControlStateNormal];
    [btn setFrame:CGRectMake(0, 0, 32, 32)];
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    //[back setBackgroundColor:[UIColor redColor]];
    
    
    UIBarButtonItem *barButton = [[UIBarButtonItem alloc] initWithCustomView:btn];
    barButton.target = target;
    return barButton;
}

+ (void)pushNewQuickController:(NewQuickDialogController*)controller
{
    UIApplication* app=[UIApplication sharedApplication];
    AppDelegate *appDelegate=(AppDelegate *)app.delegate;
    QRootElement *root = [controller create];
    NewQuickDialogController *c3 = [[NewQuickDialogController alloc] initWithRoot:root];
    [appDelegate.activeController pushViewController:c3 animated:YES];
    //    UINavigationController *nav = (UINavigationController*) appDelegate.window.rootViewController.tabBarController.selectedViewController;
    //    [nav pushViewController:c3 animated:YES];
    
}

+ (void)pushViewController:(UIViewController*)controller
{
    UIApplication* app=[UIApplication sharedApplication];
    AppDelegate *appDelegate=(AppDelegate *)app.delegate;
    [appDelegate.activeController pushViewController:controller animated:YES];
}

+(UIImage*)getMaskImage:(NSString*)imageName mask:(NSString*)maskName
{
    UIImage *image = [UIImage imageNamed:imageName];
    UIImage *maskImage = [UIImage imageNamed:maskName];
    
    return [self getMaskImage:image withMask:maskImage];
}


+ (UIImage*)getMaskImage:(UIImage *)image withMask:(UIImage *)maskImage {
    
    if (CGImageGetAlphaInfo([image CGImage]) == kCGImageAlphaNone)
    {
        NSLog(@"image no alpha");
    }
    
    CGImageRef maskRef = maskImage.CGImage;
    
    CGImageRef mask = CGImageMaskCreate(CGImageGetWidth(maskRef),
                                        CGImageGetHeight(maskRef),
                                        CGImageGetBitsPerComponent(maskRef),
                                        CGImageGetBitsPerPixel(maskRef),
                                        CGImageGetBytesPerRow(maskRef),
                                        CGImageGetDataProvider(maskRef), NULL, false);
    
    CGImageRef masked = CGImageCreateWithMask([image CGImage], mask);
    return [UIImage imageWithCGImage:masked];

}


// resize the original image and return a new UIImage object
+ (UIImage *) resizeImage:(UIImage *)image size:(CGSize)newSize {
    UIGraphicsBeginImageContext(newSize);
    [image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}


//-(CGImageRef) CopyImageAndAddAlphaChannel :(CGImageRef) sourceImage
//{
//    CGImageRef retVal = NULL;
//    size_t width = CGImageGetWidth(sourceImage);
//    size_t height = CGImageGetHeight(sourceImage);
//    
//    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
//    
//    CGContextRef offscreenContext = CGBitmapContextCreate(NULL, width, height,
//                                                          8, 0, colorSpace, kCGImageAlphaPremultipliedLast);
//    
//    if (offscreenContext != NULL) {
//        CGContextDrawImage(offscreenContext, CGRectMake(0, 0, width, height), sourceImage);
//        
//        retVal = CGBitmapContextCreateImage(offscreenContext);
//        CGContextRelease(offscreenContext);
//    }
//    
//    CGColorSpaceRelease(colorSpace);
//    return retVal;
//}

+(void) addTouchToView:(id)target sender:(id)sender action:(SEL)action
{
    UITapGestureRecognizer *tapGestureRecognizer =  [[UITapGestureRecognizer alloc] initWithTarget:target action:action];
    [sender addGestureRecognizer:tapGestureRecognizer];
}


+(void) addButtonToView:(id)target sender:(UIView*)touchView action:(SEL)action data:(NSInteger)data;
{
    UIButton *btn = [[UIButton alloc] initWithFrame:touchView.frame];
    [[touchView superview] addSubview:btn];
    
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"" forState:UIControlStateNormal];
    [btn setTag:data];
}


+(void) initDefaultBgColor:(UIView*)view
{
    [view setBackgroundColor:[GlobalUtil colorWithArray:AppBgColor]];
    
}


+(void) setMaskImageQuick:(UIView*)target withMask:(NSString*)withMask point:(CGPoint)point
{
    CALayer *mask = [CALayer layer];
    mask.contents = (id)[[UIImage imageNamed:withMask] CGImage];
    mask.frame = CGRectMake(0, 0, point.x, point.y);
    
    target.layer.mask = mask;
    target.layer.masksToBounds = YES;
//    target.image = [UIImage imageNamed:@"teamIcon.png"];
}


 



@end