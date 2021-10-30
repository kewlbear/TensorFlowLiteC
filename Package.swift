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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211029/TensorFlowLiteC.xcframework.zip", checksum: "f60b9594a086b853aba83429f104d85206c09fcb10b70024798b59fa0fa28aa9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211029/TensorFlowLiteCCoreML.xcframework.zip", checksum: "566350a21e2d1bd5d02db64f3ad389d63808f66d4f5fcccd16cee08d10615746"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211029/TensorFlowLiteCMetal.xcframework.zip", checksum: "be123a31046082d1ae300b5cbf427aec372e940859c163f64cab9d479e4585f9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
