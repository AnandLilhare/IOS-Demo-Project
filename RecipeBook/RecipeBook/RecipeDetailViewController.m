//
//  RecipeDetailViewController.m
//  RecipeBook
//
//  Created by Anand Lilhare on 28/05/17.
//  Copyright © 2017 Anand Lilhare. All rights reserved.
//

#import "RecipeDetailViewController.h"

@interface RecipeDetailViewController ()

@end

@implementation RecipeDetailViewController
@synthesize recipeLabel;
@synthesize recipeName;
- (void)viewDidLoad {
    [super viewDidLoad];
  recipeLabel.text = recipeName;
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

@end
