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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230626/TensorFlowLiteC.xcframework.zip", checksum: "e0582836c3b9be23474fcd7610a8de6aeb8cb838ff94bb0c6e8fd3b25ce1fd44"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230626/TensorFlowLiteCCoreML.xcframework.zip", checksum: "09e9af6cfaebc2f7cc9f9d97d456aa6a81032cbe987620e8f6b114f0778630ac"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230626/TensorFlowLiteCMetal.xcframework.zip", checksum: "7c924f8a405985ef466afc6aa69038f9b618de87ec7b45b638636f51abd11771"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
