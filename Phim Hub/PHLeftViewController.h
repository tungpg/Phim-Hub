//
//  PHLeftViewController.h
//  Phim Hub
//
//  Created by Pham Gia Tung on 10/23/12.
//  Copyright (c) 2012 PG Co.ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PHLeftViewController : UITableViewController<UITableViewDelegate, UISearchBarDelegate, UISearchDisplayDelegate>
@property (weak, nonatomic) IBOutlet UISearchBar *txtSearch;

@end
