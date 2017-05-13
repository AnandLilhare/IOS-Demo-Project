//
//  SimpleTableCell.h
//  TableViewDemo
//
//  Created by Anand Lilhare on 13/05/17.
//  Copyright © 2017 Anand Lilhare. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableCell : UITableViewCell
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *prepTimeLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;
@end
