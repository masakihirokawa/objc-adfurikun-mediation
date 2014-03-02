//
//  AdfurikunAdMobView.h
//  SampleView
//
//  Created by tjk on 13/05/15.
//
//

#import <Foundation/Foundation.h>
#import <adfurikunsdk/AdfurikunView.h>
#import "GADCustomEventBanner.h"
#import "GADCustomEventBannerDelegate.h"
#import "GADBannerView.h"
#import "GADBannerViewDelegate.h"


@interface AdfurikunAdMobView : NSObject <GADCustomEventBanner, AdfurikunViewDelegate> {
    AdfurikunView *adfuriunView;
}

@end
