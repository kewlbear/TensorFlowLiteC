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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240312/TensorFlowLiteC.xcframework.zip", checksum: "024f27165eb666e3abd6b4a9992b658b77d5ecf1edf582d5a6ac6f2de397d863"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240312/TensorFlowLiteCCoreML.xcframework.zip", checksum: "00b7e87700af3ed161faab11c6b280bbad84845df220e23630892f444a9c5729"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240312/TensorFlowLiteCMetal.xcframework.zip", checksum: "e7743d4ec0333fac6de71863aac605f653f49864b4c55a8f5a2e925570715487"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
