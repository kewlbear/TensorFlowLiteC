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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211102/TensorFlowLiteC.xcframework.zip", checksum: "d9fb2e55df9edf913d93fd30a53d3d36285c2ae55aee84e01d76686f9daa4560"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211102/TensorFlowLiteCCoreML.xcframework.zip", checksum: "667da3fa95e75b590d58a1281154a35e42cfb5c686a9ff6521f105257c4063a7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211102/TensorFlowLiteCMetal.xcframework.zip", checksum: "327113b1276b329a01363fda60e9b45fdaf3169895002196cafd8b46f094f037"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
