//
//  PHVideoPlayerViewController.m
//  Phim Hub
//
//  Created by Pham Gia Tung on 10/23/12.
//  Copyright (c) 2012 PG Co.ltd. All rights reserved.
//

#import "PHVideoPlayerViewController.h"

@interface PHVideoPlayerViewController ()

@end

@implementation PHVideoPlayerViewController

@synthesize delegate = _delegate;
@synthesize player = _player;

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
    NSURLCredential *credential = [[NSURLCredential alloc]
                                   initWithUser: @"cau2germany1111"
                                   password: @"12nothing1111"
                                   persistence: NSURLCredentialPersistenceForSession];
    NSURLProtectionSpace *protectionSpace = [[NSURLProtectionSpace alloc]
                                             initWithHost: @"up.4share.vn"
                                             port: 80
                                             protocol: @"http"
                                             realm: @"4share.vn"
                                             authenticationMethod: NSURLAuthenticationMethodDefault];
    [[NSURLCredentialStorage sharedCredentialStorage]
     setDefaultCredential: credential
     forProtectionSpace: protectionSpace];
    
    NSString *url1 = @"http://hn-cache1.phimhd.vn:8080/f2e1046e4603346459aa8cd7bcd5f76d/The-Amazing-Spider-Man-2012/The-Amazing-Spider-Man-2012-4.mp4";
    NSString *url2 = @"http://f2x.stream.nixcdn.com/879c9a440f56cc6295a4796eb9680b09/5089009f/PreNCT4/YeuThuongDaNhatNhoa-SakaTruongTuyen_fhg.mp4?start=0";
    NSString *url = url2;

    NSURL *myURL = [[NSURL alloc] initWithString:url];
    
    self.player = [[MPMoviePlayerViewController alloc] initWithContentURL: myURL];

    self.player.moviePlayer.controlStyle = MPMovieControlStyleFullscreen;
//    self.player.moviePlayer.view.transform = CGAffineTransformConcat(self.player.moviePlayer.view.transform, CGAffineTransformMakeRotation(M_PI_2));
//    self.player.moviePlayer.view.userInteractionEnabled = NO;
    [self.player.moviePlayer setControlStyle:MPMovieControlStyleEmbedded];
  
    UIImageView *logoImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"LogoCAD.png"]];
    logoImageView.frame = CGRectMake(390, 10, 100, 50);
    [self.player.moviePlayer.view addSubview:logoImageView];
    
//    [self.player.]
    
    [self.player.view setFrame: self.view.bounds];  // player's frame must match parent's
    [self.view addSubview: self.player.view];
    
    // Lắng nghe để bắt sự kiện người dùng nhấn nút done trên player
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(doneButtonClick:) name:MPMoviePlayerWillExitFullscreenNotification object:nil];

}

// Bắt sự kiện người dùng nhấn nút Done trên video player
- (void)doneButtonClick:(NSNotification*)aNotification{
    [self.player.moviePlayer stop];

    [[NSNotificationCenter defaultCenter] removeObserver:self name:MPMoviePlayerPlaybackDidFinishNotification object:nil];
    
    [self.player.view removeFromSuperview];
    self.player = nil;
    
    [self.delegate pHVideoPlayerViewControllerDone:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return UIInterfaceOrientationIsLandscape(toInterfaceOrientation);
}
@end
