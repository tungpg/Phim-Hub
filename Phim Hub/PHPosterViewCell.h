//
//  PHPosterViewCell.h
//  Phim Hub
//
//  Created by Pham Gia Tung on 10/23/12.
//  Copyright (c) 2012 PG Co.ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PHPosterViewCell : UITableViewCell
@property (nonatomic, strong) IBOutlet UILabel *lblFilmName;
@property (nonatomic, strong) IBOutlet UILabel *lblDuration;
@property (nonatomic, strong) IBOutlet UILabel *lblFilmType;
@property (nonatomic, strong) IBOutlet UILabel *lblStars;
@property (nonatomic, strong) IBOutlet UIImageView *imgPoster;
@end
