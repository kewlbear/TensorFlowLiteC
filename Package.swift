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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230607/TensorFlowLiteC.xcframework.zip", checksum: "ef5197cad6e1da618b7918d50b0a6c939c1afe1208337f436fc2bb6a8f679221"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230607/TensorFlowLiteCCoreML.xcframework.zip", checksum: "98bdf944945ef87b1b80093dc6c32af743ccd68f129ba098ac13b1de69913ac3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230607/TensorFlowLiteCMetal.xcframework.zip", checksum: "935735af86fb1e232ca06fd2ecc6bf304dfeebe12a0ad47409aec30f689c7d98"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
