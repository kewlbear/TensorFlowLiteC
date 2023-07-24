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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230723/TensorFlowLiteC.xcframework.zip", checksum: "9aa7c55fcd6f682111e0528b2fd589c97485503a4d25f1390be2669164f784b1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230723/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0b19f51677506350cf069e17608e0b8c845e74821d54ab71b22ab021f71288d2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230723/TensorFlowLiteCMetal.xcframework.zip", checksum: "5696729d341ba1ab3fac4001cb8265b739438a700fa28a4dc8b09adc24471bd8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
