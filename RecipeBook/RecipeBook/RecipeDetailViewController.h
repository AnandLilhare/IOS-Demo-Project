//
//  RecipeDetailViewController.h
//  RecipeBook
//
//  Created by Anand Lilhare on 28/05/17.
//  Copyright © 2017 Anand Lilhare. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeDetailViewController : UIViewController
@property (nonatomic, strong) IBOutlet UILabel *recipeLabel;
@property (nonatomic, strong) NSString *recipeName;

@end
