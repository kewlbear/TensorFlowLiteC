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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221027/TensorFlowLiteC.xcframework.zip", checksum: "e174b59321879bfdab12ab54d76b972592fbd9e249348d83b4487980e5fdf6a2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221027/TensorFlowLiteCCoreML.xcframework.zip", checksum: "439d0619d0b809752e6a2a2fd120f3e8c681eb9a6ae0f196b0391ddeeaf18610"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221027/TensorFlowLiteCMetal.xcframework.zip", checksum: "2999b44e5bf559c35274469a814f6a8a9a9362afe3ada40075eaa3ac57ae84ef"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
