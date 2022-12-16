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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221215/TensorFlowLiteC.xcframework.zip", checksum: "78dc810317575fd60f875520a1768d8444c02125fd1ebce5df670f8fe96aab8e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221215/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ca47cf29b86d10cef227237114eb77ddfea504d3d19fb5a6a41db441c180f389"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221215/TensorFlowLiteCMetal.xcframework.zip", checksum: "5a94f1e5b5ed84db3d5ef0d7a27e4c817631a51c3c0f7255ee81485d9536f4c9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
