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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210802/TensorFlowLiteC.xcframework.zip", checksum: "dfa1eeb3672e48656e4f9f1273b59aaae1b516df0aeb851f71bebee47b8cfbb4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210802/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1ec140a42efe1e3a71ade5e901d79f60ee7df991fe432b5858fe1eda29c3a2b7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210802/TensorFlowLiteCMetal.xcframework.zip", checksum: "8429922f1e3ed4aedd7386daebc46ed417a6626ece04180fb39d5c82ed962698"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
