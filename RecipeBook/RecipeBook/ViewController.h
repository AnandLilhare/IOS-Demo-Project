//
//  ViewController.h
//  RecipeBook
//
//  Created by Anand Lilhare on 24/05/17.
//  Copyright © 2017 Anand Lilhare. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) IBOutlet UITableView *tableView;
@end

