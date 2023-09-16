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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230915/TensorFlowLiteC.xcframework.zip", checksum: "61bd1a8782058fae0799ce4540746613c3437e14157a4223c4943e416f21925c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230915/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0a14f5ccbc1409fd04d81324050ffed9a636b3cac3542a40389300afe7fd325f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230915/TensorFlowLiteCMetal.xcframework.zip", checksum: "3fc8efb44f217494d96de740c37d02025de06215d0a38fa01ac22a793c4fd11a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
