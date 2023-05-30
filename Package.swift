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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230529/TensorFlowLiteC.xcframework.zip", checksum: "523f7d980a65eb65a5416bd4b289359c3250003e84342d2dbc29f5075e4d1398"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230529/TensorFlowLiteCCoreML.xcframework.zip", checksum: "27c7f786f0cdcf76b28b9a3e99f3bfea96eb2d3b93196c2c626dde0ca3af8ab2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230529/TensorFlowLiteCMetal.xcframework.zip", checksum: "735178d0d6fc72894631640c997316ec21097e3122efae1b0bc23653ad2c1567"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
