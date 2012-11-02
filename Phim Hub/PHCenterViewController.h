//
//  PHCenterViewController.h
//  Phim Hub
//
//  Hiển thị danh sách các phim mới đang có trong hệ thống
//
//  Created by Pham Gia Tung on 10/23/12.
//  Copyright (c) 2012 PG Co.ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PHFilm.h"

@interface PHCenterViewController : UITableViewController<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) PHFilm *selectedFilm;
@end
