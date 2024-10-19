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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241018/TensorFlowLiteC.xcframework.zip", checksum: "e93b67d9bbd5b7b018e0eeaee88f35b0b48cd6bb134f6d626254a5e687fdf6e4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241018/TensorFlowLiteCCoreML.xcframework.zip", checksum: "10c3711df9ffcee6ce6af964b5893fcfc47a28ea6a0bb19bed345b70a2c21b23"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241018/TensorFlowLiteCMetal.xcframework.zip", checksum: "e56cc2b5e656425242dc3427ca67f8b2458f11a2f51e42d47b19aca5d293d8e5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
