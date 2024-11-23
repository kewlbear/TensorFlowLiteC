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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241122/TensorFlowLiteC.xcframework.zip", checksum: "c9397ab27383174efdbb603edaf46c0265ef13a57c5e088920655e45b74d50e2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241122/TensorFlowLiteCCoreML.xcframework.zip", checksum: "46b673437eb8ee5b66d5fa96a0f9e33bc3c00fc43d105d9db2990538a239febc"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241122/TensorFlowLiteCMetal.xcframework.zip", checksum: "bbc42e0b45d6a442c75df8321fdd720bca8a94b486762c96f7895b2a5ac5fc41"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
