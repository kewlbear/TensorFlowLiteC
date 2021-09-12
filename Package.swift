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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210911/TensorFlowLiteC.xcframework.zip", checksum: "0281040b8657e8c50205b82f1893ec6a953baf7fdea3deb0605de56342508c19"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210911/TensorFlowLiteCCoreML.xcframework.zip", checksum: "527312cbeeaf8367966e6c80a124a50da763ae270a3d47f8a0cadbb1702a3711"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210911/TensorFlowLiteCMetal.xcframework.zip", checksum: "ab951a94f742423363973e0431bb2cd29b913eb3f2169b8e62aa82c67ac675bd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
