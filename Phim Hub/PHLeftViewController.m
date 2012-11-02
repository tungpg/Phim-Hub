//
//  PHLeftViewController.m
//  Phim Hub
//
//  Created by Pham Gia Tung on 10/23/12.
//  Copyright (c) 2012 PG Co.ltd. All rights reserved.
//

#import "PHLeftViewController.h"
#import "PHSidePanelController.h"
#import "UIViewController+JASidePanel.h"

@interface PHLeftViewController ()

@end

@implementation PHLeftViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setTxtSearch:nil];
    [super viewDidUnload];
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 1){
        // Phim mới
        if(indexPath.row == 0){
            //[self.sidePanelController.centerPanel ];
        }
    }
}

#pragma mark - UISearchBarDelegate Methods
- (BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar{
    [self.sidePanelController setCenterPanelHidden:YES animated:YES duration:0.2f];
    return YES;
}

- (void)searchBarCancelButtonClicked:(UISearchBar *) searchBar{
    [self.sidePanelController setCenterPanelHidden:NO animated:YES duration:0.2f];
}

- (BOOL)searchBarShouldEndEditing:(UISearchBar *)searchBar{
    [self.sidePanelController setCenterPanelHidden:NO animated:YES duration:0.2f];
    return YES;
}

@end
