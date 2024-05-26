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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240525/TensorFlowLiteC.xcframework.zip", checksum: "6579a9356f07c382f9637ff7d9ffde5268d340630debe949a771da456bb0bf9a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240525/TensorFlowLiteCCoreML.xcframework.zip", checksum: "146c07199f9f7f80a99876f669ccddb46eaae7d8c890372f7bb085c2583f40da"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240525/TensorFlowLiteCMetal.xcframework.zip", checksum: "24950aadb3f6b13bfd98a731cf74974e28f9b72aec5eec4a7de350afafd22f65"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
