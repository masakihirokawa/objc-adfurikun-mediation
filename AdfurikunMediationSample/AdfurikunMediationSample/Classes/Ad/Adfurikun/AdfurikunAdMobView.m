//
//  AdfurikunAdMobView.m
//  SampleView
//
//  Created by tjk on 13/05/15.
//
//

#import "AdfurikunAdMobView.h"

@implementation AdfurikunAdMobView

@synthesize delegate;

- (void)dealloc {
    adfuriunView.delegate = nil;
    [adfuriunView release];
    [super dealloc];
}

#pragma mark -
#pragma mark GADCustomEventBanner

- (void)requestBannerAd:(GADAdSize)adSize
              parameter:(NSString *)serverParameter
                  label:(NSString *)serverLabel
                request:(GADCustomEventRequest *)customEventRequest  {
    
    
    adfuriunView  = [[AdfurikunView alloc] initWithFrame:CGRectMake( 0.0,0.0, adSize.size.width, adSize.size.height )];
    adfuriunView.delegate = self;
    adfuriunView.appID = serverParameter; // admob に登録したアプリIDを受け取って設定
    
	//テストモード（アドネットワークキーを確認する）
	//本番配信する際は、testModeEnableをコメントアウトしてください。
    [adfuriunView testModeEnable];
	[adfuriunView startShowAd];

}

#pragma mark -
#pragma mark AdfurkunView Callbacks
/**
 * 広告の表示/更新完了通知
 */
-(void)adfurikunViewDidFinishLoad:(AdfurikunView *)view
{
    NSLog( @"adfurikun: ad loaded" );
    [self.delegate customEventBanner:self didReceiveAd:view];
}
/**
 * 広告がクリックされたことの通知
 */
-(void)adfurikunViewAdTapped:(AdfurikunView *)view{
    NSLog( @"adfurikun: ad clicked" );
    [self.delegate customEventBanner:self clickDidOccurInAd:view];
}

/**
 * エラー通知は無い。
 */


@end
