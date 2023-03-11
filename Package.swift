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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230310/TensorFlowLiteC.xcframework.zip", checksum: "20ae07e33973f51c554ce37c91d460faded44df733a11f283b88cf6f9f2abc43"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230310/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b5289f58da430b7e8ea04b401928f8faa3c687018f9d2ae11c3d48024d680b73"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230310/TensorFlowLiteCMetal.xcframework.zip", checksum: "4b25dd893da8e2f901dc1eef944e78a1b61952133e2d9ed4647103b8523facd0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
