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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220821/TensorFlowLiteC.xcframework.zip", checksum: "82fa335d61b08abbc1b529dae3debd7c9869755b915748b9d59f702cc408b805"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220821/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8b9efcddbdd237314383b658f75ae27551efa12d2813111fd9c472221d7f6fa3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220821/TensorFlowLiteCMetal.xcframework.zip", checksum: "eb0a95446b7b2c8658631b5e92f08e65bc95f026d013346ea53bc543a2490f32"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
