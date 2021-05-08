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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210507/TensorFlowLiteC.xcframework.zip", checksum: "712c222668a40242702d9b3f384ff5e1e076099817bcf0e01058428de49b3a04"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210507/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cbeef2921469a6d95473c40c62b4508ecb82a3b312cd78a0401941deed605f91"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210507/TensorFlowLiteCMetal.xcframework.zip", checksum: "3944527281cc997c5b3c3047a98f2823fd86da9b9f526078c7d031c742b4e133"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
