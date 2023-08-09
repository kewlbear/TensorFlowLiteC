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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230808/TensorFlowLiteC.xcframework.zip", checksum: "ccdef9f252ab05c7e1d89e675e0af38f7eb586f74d72dbffd4cac671aeb337a7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230808/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0f5bbd0478d28cc16c9e06fbc8fd4cd88cc64acd7bd9213f064c7f1ddbcb1796"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230808/TensorFlowLiteCMetal.xcframework.zip", checksum: "7b464bf0f1dcac8c6b0aca4463418ad8e3fa40a11fb7fb5cc193172896036b00"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
