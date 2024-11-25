// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SomethingWithGoogleMobileAds",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "SomethingWithGoogleMobileAds",
            targets: [
                "SomethingWithGoogleMobileAds"
            ]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
            exact: "11.10.0"
        ),
        .package(
            url: "https://github.com/google/gtm-session-fetcher.git", "2.1.0"..<"4.0.0"
        )
    ],
    targets: [
        .target(
            name: "SomethingWithGoogleMobileAds",
            dependencies: [
                .product(
                    name: "GoogleMobileAds",
                    package: "swift-package-manager-google-mobile-ads"
                ),
                .product(
                    name: "GTMSessionFetcher",
                    package: "gtm-session-fetcher"
                ),
                "AFSNativeTarget",
                "CriteoPublisherSdkTarget",
                "PrebidMobileTarget",
                "DTBiOSSDKTarget",
                "FBAudienceNetworkTarget",
                "GoogleMobileAdsMediationFacebookTarget",
                "FBSDKCoreKitTarget",
                "FBSDKCoreKit_BasicsTarget",
                "FBAEMKitTarget"
            ]
        ),
        .binaryTarget(
            name: "PrebidMobileTarget",
            path: "Frameworks/PrebidMobile.xcframework"
        ),
        .binaryTarget(
            name: "DTBiOSSDKTarget",
            path: "Frameworks/DTBiOSSDK.xcframework"
        ),
        .binaryTarget(
            name: "AFSNativeTarget",
            path: "Frameworks/AFSNative.xcframework"
        ),
        .binaryTarget(
            name: "FBAudienceNetworkTarget",
            path: "Frameworks/FBAudienceNetwork.xcframework"
        ),
        .binaryTarget(
            name: "GoogleMobileAdsMediationFacebookTarget",
            path: "Frameworks/MetaAdapter.xcframework"
        ),
        .binaryTarget(
            name: "FBSDKCoreKitTarget",
            path: "Frameworks/FBSDKCoreKit.xcframework"
        ),
        .binaryTarget(
            name: "FBSDKCoreKit_BasicsTarget",
            path: "Frameworks/FBSDKCoreKit_Basics.xcframework"
        ),
        .binaryTarget(
            name: "FBAEMKitTarget",
            path: "Frameworks/FBAEMKit.xcframework"
        ),
        .binaryTarget(
            name: "CriteoPublisherSdkTarget",
            path: "Frameworks/CriteoPublisherSdk.xcframework"
        )
    ]
)
