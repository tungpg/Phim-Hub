//
//  PHPosterViewCell.m
//  Phim Hub
//
//  Created by Pham Gia Tung on 10/23/12.
//  Copyright (c) 2012 PG Co.ltd. All rights reserved.
//

#import "PHPosterViewCell.h"

@implementation PHPosterViewCell
@synthesize lblFilmName = _lblFilmName;
@synthesize lblDuration = _lblDuration;
@synthesize lblFilmType = _lblFilmType;
@synthesize lblStars = _lblStars;
@synthesize imgPoster = _imgPoster;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
