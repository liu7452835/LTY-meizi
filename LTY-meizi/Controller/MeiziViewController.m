//
//  MeiziViewController.m
//  LTY-meizi
//
//  Created by 刘天宇 on 2018/10/15.
//  Copyright © 2018年 lty. All rights reserved.
//

#import "MeiziViewController.h"
#import "LTYNavigationDropdownMenu.h"

@interface MeiziViewController ()<LTYNavigationDropdownMenuDelegate,LTYNavigationDropdownMenuDataSource>

@end

@implementation MeiziViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - property method

- (UINavigationItem *)navigationItem{
    UINavigationItem *navigationItem = [super navigationItem];
    if (!navigationItem.titleView) {
        LTYNavigationDropdownMenu *dropdownMenu = [[LTYNavigationDropdownMenu alloc] initWithNavigationController:self.navigationController];
        dropdownMenu.delegate = self;
        dropdownMenu.dataSource = self;
        navigationItem.titleView = dropdownMenu;
    }
    return navigationItem;
}


#pragma mark - NavigationDropdownMenu Delegate
- (void)navigationDropdownMenu:(LTYNavigationDropdownMenu *)navigationDropdownMenu didSelectTitleAtIndex:(NSUInteger)index {
    //
}

#pragma mark - LTYNavigationDropdownMenu DataSource
- (NSArray<NSString *> *)titleArrayForNavigationDropdownMenu:(LTYNavigationDropdownMenu *)navigationDropdownMenu {
    return @[@"所有", @"大胸", @"翘臀", @"黑丝", @"美腿", @"清新", @"杂烩"];
}

- (UIImage *)arrowImageForNavigationDropdownMenu:(LTYNavigationDropdownMenu *)navigationDropdownMenu{
    return [UIImage imageNamed:@"Arrow"];
}

- (CGFloat)spacingBetweenTitleAndArrowForNavigationDropdownMenu:(LTYNavigationDropdownMenu *)navigationDropdownMenu{
    return 8.0;
}

- (BOOL)keepCellSelectionForNavigationDropdownMenu:(LTYNavigationDropdownMenu *)navigationDropdownMenu{
    return NO;
}

@end
