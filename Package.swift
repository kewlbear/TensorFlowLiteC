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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210628/TensorFlowLiteC.xcframework.zip", checksum: "13d8be92c2aff35d45590efa728e31e66c4e9ffb19f73146c706706a4dc0a691"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210628/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6e4ff9adc72b886515836ab4aebe6f05568f646900a952a32202d5873136f0dc"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210628/TensorFlowLiteCMetal.xcframework.zip", checksum: "c996b69bfff87acb0b9cd323fed6b782a9a7dac4b8f048ef68f08a96caf9c707"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
