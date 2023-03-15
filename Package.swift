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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230314/TensorFlowLiteC.xcframework.zip", checksum: "f3ec71470f01766349953138337ac261d9460664ac55aa4bd0073f6e0b14768c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230314/TensorFlowLiteCCoreML.xcframework.zip", checksum: "29d752c4aad9641fa095c6522adc95dc51d7741511430ae73534a514baad98b3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230314/TensorFlowLiteCMetal.xcframework.zip", checksum: "f70f708104664a1e654ee12fc7fe0ca1be32f538c3fc3c5ba42ad83990361582"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
