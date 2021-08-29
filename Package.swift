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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210828/TensorFlowLiteC.xcframework.zip", checksum: "71cd5b50d492b50026853c547e19a93f65ca45916e91f3bd656de1754d798bf2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210828/TensorFlowLiteCCoreML.xcframework.zip", checksum: "88f06e3966cc80b14b64c21e50567235af77af9f6de4b6050d5a9e3e1336bdb5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210828/TensorFlowLiteCMetal.xcframework.zip", checksum: "6c3080892aec27fcece20b761989e741e9abfe61f7a2fe1a6720c365caff6c82"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
