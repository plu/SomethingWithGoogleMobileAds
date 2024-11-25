#import <UIKit/UIKit.h>

/**
 * An Ad view. This is a view that must be populated by a @c GANSearchAdController.
 */
@interface GANAdView : UIView
@end

/**
 * The data provided to the completion handler after an ad view is populated.
 */
@interface GANAdViewCompletionHandlerData : NSObject

/**
 * The height of the ad view after it has been populated.
 */
@property(nonatomic, readwrite, assign) CGFloat height;

@end

/**
 * The callback type for when populateAdView completes.
 */
typedef void (^GANAdViewPopulatedCompletionHandler)(GANAdViewCompletionHandlerData* callbackData);
