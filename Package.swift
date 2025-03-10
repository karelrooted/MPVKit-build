// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "MPVKit",
    defaultLocalization: "en",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(
            name: "MPVKit",
            type: .static,
            targets: ["MPVKit"]
        ),
        // .library(
        //     name: "FFmpegKit",
        //     type: .static,
        //     targets: ["FFmpegKit"]
        // ),
        // .library(name: "Libavcodec", targets: ["Libavcodec"]),
        // .library(name: "Libavdevice", targets: ["Libavdevice"]),
        // .library(name: "Libavfilter", targets: ["Libavfilter"]),
        // .library(name: "Libavformat", targets: ["Libavformat"]),
        // .library(name: "Libavutil", targets: ["Libavutil"]),
        // .library(name: "Libswresample", targets: ["Libswresample"]),
        // .library(name: "Libswscale", targets: ["Libswscale"]),
        // .library(name: "Libssl", targets: ["Libssl"]),
        // .library(name: "Libcrypto", targets: ["Libcrypto"]),
        // .library(name: "Libass", targets: ["Libass"]),
        // .library(name: "Libfreetype", targets: ["Libfreetype"]),
        // .library(name: "Libfribidi", targets: ["Libfribidi"]),
        // .library(name: "Libharfbuzz", targets: ["Libharfbuzz"]),
        // .library(name: "Libuchardet", targets: ["Libuchardet"]),
        // .library(name: "Libmpv", targets: ["Libmpv"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        .target(
            name: "MPVKit",
            dependencies: [
                "Libavcodec", "Libavdevice", "Libavfilter", "Libavformat", "Libavutil", "Libswresample",
                "Libswscale", "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "Libuchardet", "Libmpv"
//                "Libsrt",
            ],
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreAudio"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),
        .target(
            name: "FFmpegKit",
            dependencies: [
                "Libavcodec", "Libavfilter", "Libavformat", "Libavutil", "Libswresample", "Libswscale",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz"
//                "Libsrt",
            ],
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),
        .executableTarget(
            name: "build",
            path: "Plugins/BuildFFmpeg"
        ),
        // .plugin(
        //     name: "Build FFmpeg",
        //     capability: .command(
        //         intent: .custom(
        //             verb: "build-FFmpeg",
        //             description: "You can customize FFmpeg and then compile FFmpeg"
        //         ),
        //         permissions: [
        //             .writeToPackageDirectory(reason: "This command compile FFmpeg and generate xcframework. So you need run swift package build-FFmpeg --allow-writing-to-package-directory"),
        //         ]
        //     )
        // ),
        .binaryTarget(
            name: "Libmpv",
            path: "Sources/Libmpv.xcframework"
        ),
        .binaryTarget(
            name: "Libavcodec",
            path: "Sources/Libavcodec.xcframework"
        ),
        .binaryTarget(
            name: "Libavdevice",
            path: "Sources/Libavdevice.xcframework"
        ),
        .binaryTarget(
            name: "Libavfilter",
            path: "Sources/Libavfilter.xcframework"
        ),
        .binaryTarget(
            name: "Libavformat",
            path: "Sources/Libavformat.xcframework"
        ),
        .binaryTarget(
            name: "Libavutil",
            path: "Sources/Libavutil.xcframework"
        ),
        .binaryTarget(
            name: "Libswresample",
            path: "Sources/Libswresample.xcframework"
        ),
        .binaryTarget(
            name: "Libswscale",
            path: "Sources/Libswscale.xcframework"
        ),
        .binaryTarget(
            name: "Libssl",
            path: "Sources/Libssl.xcframework"
        ),
        .binaryTarget(
            name: "Libcrypto",
            path: "Sources/Libcrypto.xcframework"
        ),
        .binaryTarget(
            name: "Libass",
            path: "Sources/Libass.xcframework"
        ),
        .binaryTarget(
            name: "Libfreetype",
            path: "Sources/Libfreetype.xcframework"
        ),
        .binaryTarget(
            name: "Libfribidi",
            path: "Sources/Libfribidi.xcframework"
        ),
        .binaryTarget(
            name: "Libharfbuzz",
            path: "Sources/Libharfbuzz.xcframework"
        ),
        .binaryTarget(
            name: "Libuchardet",
            path: "Sources/Libuchardet.xcframework"
        ),
//        .binaryTarget(
//            name: "Libsrt",
//            path: "Sources/Libsrt.xcframework"
//        ),
    ]
)
