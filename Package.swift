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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210929/TensorFlowLiteC.xcframework.zip", checksum: "bfdce6370b2d944a4bf7d50c869376e94c361fab32698472e393a190001048cc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210929/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f91e73e428ce75f4c01bcb818706b2e913974ce4564ab5b4b987f5b02dd48675"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210929/TensorFlowLiteCMetal.xcframework.zip", checksum: "ddaf395e0b0deda70c3b3dadb12ccbcd9b0eb675772ebfc31be684f1e104ac63"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
