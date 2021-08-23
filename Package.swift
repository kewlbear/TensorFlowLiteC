// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: [
                "TensorFlowLiteC",
                "TensorFlowLiteCCoreML",
                "TensorFlowLiteCMetal",
                "Link",
            ]
        ),
    ],
    targets: [
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210822/TensorFlowLiteC.xcframework.zip", checksum: "388f698478200965aac1fdd8cfcd87d0f7018175dcffdbb671fb80c53235498a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210822/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8ba7ffa480374fa23315f02f2e3eb6d452197226aa8c2a748ea449f2d56bf256"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210822/TensorFlowLiteCMetal.xcframework.zip", checksum: "3f76160962f2085ddb0825e2990cd62595fa09e73c3e4ae3ff328df4285a745d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
