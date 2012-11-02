//
//  PHCenterViewController.m
//  Phim Hub
//
//  Created by Pham Gia Tung on 10/23/12.
//  Copyright (c) 2012 PG Co.ltd. All rights reserved.
//

#import "PHCenterViewController.h"
#import "PHAppDelegate.h"
#import "PHFilm.h"
#import "PHPosterViewCell.h"
#import "PHFilmDetailViewController.h"

@interface PHCenterViewController ()

@end

@implementation PHCenterViewController

@synthesize selectedFilm = _selectedFilm;

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
//    PHAppDelegate *phAppDelegate = (PHAppDelegate *)[[UIApplication sharedApplication] delegate];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    PHPosterViewCell *cell = (PHPosterViewCell*)[tableView cellForRowAtIndexPath:indexPath];
    
    // Get selection film
    _selectedFilm = [[PHFilm alloc] init];

    _selectedFilm.strFilmName = cell.lblFilmName.text;
}

#pragma mark - UITableViewDataSource Methods
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"PHPosterViewCell";
    
    PHPosterViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(nil == cell){
        cell = [[PHPosterViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }

    PHAppDelegate *phAppDelegate = (PHAppDelegate *)[[UIApplication sharedApplication] delegate];
    PHFilm *film = (PHFilm *)[phAppDelegate.arrNewestFilms objectAtIndex:indexPath.row];

    if(film){
        cell.lblFilmName.text = film.strFilmName;
        UIImage *poster = [UIImage imageNamed:film.strPosterImageLocal];
        cell.imgPoster.image = poster;

        NSLog(@"Film Namex = %@", cell.lblFilmName.text);
    }

    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    PHAppDelegate *phAppDelegate = (PHAppDelegate *)[[UIApplication sharedApplication] delegate];
    return phAppDelegate.arrNewestFilms.count;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"viewFilmDetail"]){
        PHFilmDetailViewController *detailViewController = [segue destinationViewController];
        detailViewController.film = _selectedFilm;
    }
}
@end
