//
//  CyFreshInfoListController.m
//  CyFreshInfo
//
//  Created by D3@TH <deathsrepo@gmail.com> on 11.07.2014.
//  Copyright (c) 2014 D3@TH <deathsrepo@gmail.com>. All rights reserved.
//

#import "CyFreshInfoListController.h"

@implementation CyFreshInfoListController

- (id)specifiers {
	if (_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"CyFreshInfo" target:self] retain];
	}
    
	return _specifiers;
}

- (void)followOnTwitter {
    if ([[UIApplication sharedApplication]canOpenURL:[NSURL URLWithString:@"tweetbot:"]]) {
        [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"tweetbot:///user_profile/D3ATH2020"]];
    } else if ([[UIApplication sharedApplication]canOpenURL:[NSURL URLWithString:@"tweetings:"]]) {
        [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"tweetings:///user?screen_name=D3ATH2020"]];
    } else if ([[UIApplication sharedApplication]canOpenURL:[NSURL URLWithString:@"twitter:"]]) {
        [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"twitter://user?screen_name=D3ATH2020"]];
    } else {
        [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"http://twitter.com/intent/follow?screen_name=D3ATH2020"]];
    }
}

    -(void)likeUsOnFacebook {
        if ([[UIApplication sharedApplication]canOpenURL:[NSURL URLWithString:@"facebook:"]]) {
            [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"facebook:///pages/D3THs-Creations/136898313050635?ref_type=bookmark"]];
        } else {
            [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"https://www.facebook.com/pages/D3THs-Creations/136898313050635?ref_type=bookmark"]];

    }
}
    
        -(void)support {
            if ([[UIApplication sharedApplication]canOpenURL:[NSURL URLWithString:@"chrome:"]]) {
                [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"chrome:///http://deathscreations.22web.org/"]];
            } else {
                [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"http://deathscreations.22web.org/"]];

        }
}

@end
