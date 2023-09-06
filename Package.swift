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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230905/TensorFlowLiteC.xcframework.zip", checksum: "d9c8de079585ea6b5cb57e69423d4cb72b3e0ed5664fedecd05d58034d7c4417"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230905/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b31c035697d2859220fc7cd156d4c3aa748d54c9c2a56cb92657a4513827a613"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230905/TensorFlowLiteCMetal.xcframework.zip", checksum: "58d793e8d5951f194bc3895689f330c813d20000b5b0dcd533cbb73e284c4dcb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
