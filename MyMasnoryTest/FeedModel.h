//
//  FeedModel.h
//  MyMasnoryTest
//
//  Created by MikeZhangpy on 16/3/25.
//  Copyright © 2016年 MikeZhangpy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FeedModel : NSObject
@property (copy, nonatomic) NSString *username;
@property (copy, nonatomic) NSString *title;
@property (copy, nonatomic) NSString *content;
@property (copy, nonatomic) NSString *imageName;
@property (copy, nonatomic) NSString *time;

+ (instancetype) feedWithDictionary:(NSDictionary *) dictionary;

- (instancetype) initWithDictionary:(NSDictionary *) dictionary;
@end
