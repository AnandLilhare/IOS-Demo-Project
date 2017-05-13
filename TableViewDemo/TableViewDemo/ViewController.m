//
//  ViewController.m
//  TableViewDemo
//
//  Created by Anand Lilhare on 13/05/17.
//  Copyright © 2017 Anand Lilhare. All rights reserved.
//

#import "ViewController.h"
#import "SimpleTableCell.h"
@interface ViewController ()

@end

@implementation ViewController
{
    NSArray *tableData;
    NSArray *thumbnails;
     NSArray *prepTime;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // Initialize table data
     tableData = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
    
    // Initialize thumbnails
    thumbnails = [NSArray arrayWithObjects:@"creme_brelee.jpg", @"creme_brelee.jpg", @"creme_brelee.jpg", @"creme_brelee.jpg", @"creme_brelee.jpg", @"creme_brelee.jpg", @"creme_brelee.jpg", @"creme_brelee.jpg", @"creme_brelee.jpg", @"creme_brelee.jpg", @"creme_brelee.jpg", @"creme_brelee.jpg", @"creme_brelee.jpg", @"creme_brelee.jpg", @"creme_brelee.jpg", @"creme_brelee.jpg", nil];
     prepTime = [NSArray arrayWithObjects:@"10 min", @"20 min", @"55 min", @"34 min", @"78 min", @"10 min", @"20 min", @"55 min", @"34 min", @"10 min", @"20 min", @"55 min", @"34 min", @"10 min", @"20 min", @"55 min", nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
 /*   static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];

    return cell;*/
    
    //----------------------------------//
    //Custome cell code
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    SimpleTableCell *cell = (SimpleTableCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SimpleTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.nameLabel.text = [tableData objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    cell.prepTimeLabel.text = [prepTime objectAtIndex:indexPath.row];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 78;
}
@end
