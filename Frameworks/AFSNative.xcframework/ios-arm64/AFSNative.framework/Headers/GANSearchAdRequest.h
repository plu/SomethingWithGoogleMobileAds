#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 * Typically, the client of the SDK will instantiate a GANSearchAdRequest with
 * the appropriate query and then it will use to load ads through the
 * GANSearchAdController (-loadAds:).
 */
@interface GANSearchAdRequest : NSObject <NSCopying>

/**
 * The search query, such as "flowers". It must be a non empty string. It should not be
 * URL-encoded.
 */
@property(nonatomic, readwrite, copy) NSString *query;

/**
 * For testing purposes, sets the user's location to return location-targeted shopping ads
 * (optional).
 *
 * <p>Only valid for AdSense for Shopping (AFSh) ads with @c adtest on. Provide the
 * two-letter country code, case-insensitive.
 */
@property(nonatomic, readwrite, copy) NSString *testGeolocation;

/** The target language for the ad request.
 * <p>Languages specified using the Google AdWords API language codes. The
 * default value is 'en'.*/
@property(nonatomic, readwrite, copy) NSString *targetLanguage;

@end

NS_ASSUME_NONNULL_END
