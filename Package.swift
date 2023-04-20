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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230419/TensorFlowLiteC.xcframework.zip", checksum: "272a8936ba3c8f373f63137d43f8ad0f546c18b56e80bd293f3ad5a2d3ace88c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230419/TensorFlowLiteCCoreML.xcframework.zip", checksum: "495519d8e95509ffb3dc7c248109ea614be08f2b2d899177e7e16a9d45ef53f2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230419/TensorFlowLiteCMetal.xcframework.zip", checksum: "d3491eb869a3799fd02a4008ae0ed52469b6a74adbfafb322599b543e60a32c2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
