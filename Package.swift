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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241024/TensorFlowLiteC.xcframework.zip", checksum: "066cf70a2b86ee92323af7849ea628ddb45a35c624d6a5e5474c9eee30b390db"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241024/TensorFlowLiteCCoreML.xcframework.zip", checksum: "10512edf7967c891b5030f339671f681d5907792a9989f3f215624ea6526d635"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241024/TensorFlowLiteCMetal.xcframework.zip", checksum: "1cec58baa07dd6def51af4f88b3bd4745112de2b6d86823a7e1ed2afcaa12abe"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
