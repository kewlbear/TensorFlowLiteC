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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220917/TensorFlowLiteC.xcframework.zip", checksum: "aa575e3b6ddf7199ad164d53344525a7666c027953219fd678961ab322507eb4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220917/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0bcb08b8667bac7e0a4f16832b05f45415e828be9c7ea7dafcda2207bb27eef5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220917/TensorFlowLiteCMetal.xcframework.zip", checksum: "20ee92d663baa33121ebe58b30e98895ee60d8925fdbf0c4f2c5f3e656bccdf4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
