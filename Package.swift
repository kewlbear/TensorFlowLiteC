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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240510/TensorFlowLiteC.xcframework.zip", checksum: "a84fea3c4a4d5226f83440578f6a51a80be7ab1d4b61a708767b4fe018c304aa"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240510/TensorFlowLiteCCoreML.xcframework.zip", checksum: "583f8ae8e8802d96c7a9e4898b325ea2ab6bc627d7068c8fbfaa640a9f81279b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240510/TensorFlowLiteCMetal.xcframework.zip", checksum: "a386b8dc9d308fe93a87ee2b3c834529b5b5fe131a641e2133d7cb52637f7c7d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
