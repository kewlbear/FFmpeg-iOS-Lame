// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "FFmpeg-iOS-Lame",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "FFmpeg-iOS-Lame",
            targets: [
                "avcodec", "avutil", "avformat", "avfilter", "avdevice", "swscale", "swresample",
                "fftools", "Dummy",
            ]),
    ],
    dependencies: [
        .package(url: "https://github.com/kewlbear/FFmpeg-iOS-Support", from: "0.0.1"),
    ],
    targets: [
        .binaryTarget(name: "avcodec", url: "https://github.com/kewlbear/FFmpeg-iOS-Lame/releases/download/v0.0.6-b20230416-184420/avcodec.zip", checksum: "0bea10182a4dfec3ea057564e19d22c2529d51c53cd4b1cb9ecac97131e7e149"),
        .binaryTarget(name: "avutil", url: "https://github.com/kewlbear/FFmpeg-iOS-Lame/releases/download/v0.0.6-b20230416-184420/avutil.zip", checksum: "9e783ef32b8153ec31e4fac81bbe120a6d44a6a0c080b6a3f51d98e7926ba338"),
        .binaryTarget(name: "avformat", url: "https://github.com/kewlbear/FFmpeg-iOS-Lame/releases/download/v0.0.6-b20230416-184420/avformat.zip", checksum: "2d910c3dc2501eefe8308372140596d70650332ffbd14531c2a3ea88bcef05c0"),
        .binaryTarget(name: "avfilter", url: "https://github.com/kewlbear/FFmpeg-iOS-Lame/releases/download/v0.0.6-b20230416-184420/avfilter.zip", checksum: "9d98586cacd943b469a17a5b8809cce027fec9ca8ad7112649ffb15648793e39"),
        .binaryTarget(name: "avdevice", url: "https://github.com/kewlbear/FFmpeg-iOS-Lame/releases/download/v0.0.6-b20230416-184420/avdevice.zip", checksum: "147c5868bf211d95b529d234dbb31a12e8d3595005adb40676e964b9fa148b0a"),
        .binaryTarget(name: "swscale", url: "https://github.com/kewlbear/FFmpeg-iOS-Lame/releases/download/v0.0.6-b20230416-184420/swscale.zip", checksum: "23804b3aa57be02454ae2f647b5d1501a1d8b4e77798b79d25a2d83ba360cd99"),
        .binaryTarget(name: "swresample", url: "https://github.com/kewlbear/FFmpeg-iOS-Lame/releases/download/v0.0.6-b20230416-184420/swresample.zip", checksum: "ab134e0c637db2d40973095cb0404467ea21c0fa03fdfa2307c12f91a8ccfddd"),
        .binaryTarget(name: "fftools", url: "https://github.com/kewlbear/FFmpeg-iOS-Lame/releases/download/v0.0.6-b20230416-184420/fftools.zip", checksum: "38812fee77b53a00056376b905e1ffd01de2590d1f3b52e9cf4f2d12debad7bd"),
        .binaryTarget(name: "mp3lame", url: "https://github.com/kewlbear/FFmpeg-iOS-Lame/releases/download/v0.0.6-b20230416-184420/mp3lame.zip", checksum: "c7b3ef1a5a5e8d8690389a1ae0b7c43368e90647590767fdede5d18a23e3bd22"),
        .target(name: "Dummy", dependencies: [
            "fftools",
            "avcodec", "avformat", "avfilter", "avdevice", "avutil", "swscale", "swresample",
            "mp3lame",
            "FFmpeg-iOS-Support",
        ]),
        .testTarget(name: "FFmpeg-iOSTests",
                    dependencies: ["Dummy",]),
    ]
)
