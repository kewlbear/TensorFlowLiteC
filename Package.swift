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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250528/TensorFlowLiteC.xcframework.zip", checksum: "3c84c5cc1ab69c13390a455e40ab175f93c6ec3164adae0d82dd94fe423b7448"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250528/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b30c28d2ccada622ec34af9d1c795ae17346831d8cc4993e616e3db050448433"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250528/TensorFlowLiteCMetal.xcframework.zip", checksum: "74bb07e809c1e31eebaec2a891095219c3a3529787899101d2c41dc0012a7324"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
