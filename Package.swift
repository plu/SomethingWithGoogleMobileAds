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
        )
    ],
    targets: [
        .target(
            name: "SomethingWithGoogleMobileAds",
            dependencies: [
                .product(
                    name: "GoogleMobileAds",
                    package: "swift-package-manager-google-mobile-ads"
                )
            ]
        )
    ]
)
