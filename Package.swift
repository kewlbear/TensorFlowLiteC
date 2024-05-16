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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240515/TensorFlowLiteC.xcframework.zip", checksum: "8fddb5c06eadc6aa21a78a7b22020a239817cd783b6549fe5f1f2a08bb607211"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240515/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bab774528bcdef8e289be08644bc2374dd46767d620e0922277ff8fce29ff576"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240515/TensorFlowLiteCMetal.xcframework.zip", checksum: "407191a53622c534490d2805be238776e16bf696d9f60563adb150a29dbad070"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
