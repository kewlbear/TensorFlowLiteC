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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210511/TensorFlowLiteC.xcframework.zip", checksum: "3d54b7e9f3f46cba985fed853e452c5d33a694f8dd5b638412cc6a964fbbb839"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210511/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a79125cd6ed7d8484c6012573faee53e117a9de630ade52a5c875a69e06747a9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210511/TensorFlowLiteCMetal.xcframework.zip", checksum: "077d18c698147d0667632c6a017368c260ff62d82be4de6a820990feee174e1e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
