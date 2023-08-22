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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230821/TensorFlowLiteC.xcframework.zip", checksum: "f77a3c0318fef2c8d74016fdf81db1ec70405dfd82bed6572270702c665c25b3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230821/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1279fb05bcdc6fbdff3698f16bb3e27f7aefe160257718802189d383f8abde52"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230821/TensorFlowLiteCMetal.xcframework.zip", checksum: "eca7ca62675d3955db545ada65b442b0db46c3fe41ac87640da01e3a336485c5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
