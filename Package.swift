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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240328/TensorFlowLiteC.xcframework.zip", checksum: "91184a6af6a45ba3795b02d77c31004d871bcb348c5b6302118b44b8a7aae972"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240328/TensorFlowLiteCCoreML.xcframework.zip", checksum: "70b90936147b83f913cdd2145c99162993bcede984c16fba745dd08f9b8380b1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240328/TensorFlowLiteCMetal.xcframework.zip", checksum: "a98f5ee0d5556b6dceafc9becfdf0ad8c6be1e35e5f71fcff050ddb16c2b6264"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
