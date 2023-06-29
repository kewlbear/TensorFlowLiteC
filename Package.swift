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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230628/TensorFlowLiteC.xcframework.zip", checksum: "2d47b4796d7119e9c52075a9ed3191758cb4dc1a7ad07dea9948a5a5352cef16"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230628/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0bd2d92960b0697e95e364838e0c301eb21060d6122df40ba7858dfada4893b9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230628/TensorFlowLiteCMetal.xcframework.zip", checksum: "630be628ddf9baef3b5ec7b49604a65f84cd7c221b1bb9c3d38d6144b43e6db2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
