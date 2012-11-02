//
//  PHVideoPlayerViewController.h
//  Phim Hub
//
//  Created by Pham Gia Tung on 10/23/12.
//  Copyright (c) 2012 PG Co.ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Mediaplayer/MPMoviePlayerViewController.h"
#import "Mediaplayer/MPMoviePlayerController.h"

@class PHVideoPlayerViewController;

@protocol PHVideoPlayerViewControllerDelegate <NSObject>
- (void)pHVideoPlayerViewControllerDone:
(PHVideoPlayerViewController *)controller;
@end

@interface PHVideoPlayerViewController : UIViewController{
}

@property (nonatomic, weak) id <PHVideoPlayerViewControllerDelegate> delegate;
@property (nonatomic, strong) MPMoviePlayerViewController *player;
@end
