/*
 * author 孔凡列
 *
 * gitHub https://github.com/gitkong
 * cocoaChina http://code.cocoachina.com/user/
 * 简书 http://www.jianshu.com/users/fe5700cfb223/latest_articles
 * QQ 279761135
 * 喜欢就给个like 和 star 喔~
 */
#import "FLLandBaseViewController.h"

@interface FLLandBaseViewController ()

@end

@implementation FLLandBaseViewController

- (void)loadView{
    UIView *fl_view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.width)];
    fl_view.backgroundColor = [UIColor whiteColor];
    self.view = fl_view;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //横屏.
    [self fl_screenStyle:UIInterfaceOrientationLandscapeRight];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    //竖屏.
    [self fl_screenStyle:UIInterfaceOrientationPortrait];
}

#pragma mark -- private method
- (void)fl_screenStyle:(UIInterfaceOrientation)interfaceOrientation{
    NSNumber *value = [NSNumber numberWithInt:interfaceOrientation];
    [[UIDevice currentDevice] setValue:value forKey:@"orientation"];
}

@end
