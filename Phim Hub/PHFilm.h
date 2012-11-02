//
//  PHFilm.h
//  Phim Hub
//
//  Created by Pham Gia Tung on 10/23/12.
//  Copyright (c) 2012 PG Co.ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PHFilm : NSObject
@property NSString *strFilmName;
@property NSString *strFilmType;
@property int *intDuration; // In minutes
@property NSString *strStars;
@property NSString *strDirectors;
@property NSString *strFromCountry;
@property float fltIMDBPoint;
@property int intPublishYear;
@property NSString *strDescription;
@property NSString *strPosterImageURL; // Lưu URl của file ảnh trên server
@property NSString *strPosterImageLocal; // Lưu vị trí của file ảnh đã được save trong máy
@end
