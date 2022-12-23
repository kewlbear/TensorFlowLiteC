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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221222/TensorFlowLiteC.xcframework.zip", checksum: "3b9a3b6bb6187a67de2fb591279595288dd57e5ab4bc883d33b7eb6092bb34c6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221222/TensorFlowLiteCCoreML.xcframework.zip", checksum: "46ca2a80eb1dd3429a6376ef79314905410c107faca239157c3907e507ee64e9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221222/TensorFlowLiteCMetal.xcframework.zip", checksum: "66eec6f669902c53f3bb968a8ee578abcf751577bdf6dee653cef5526ec7bf48"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
