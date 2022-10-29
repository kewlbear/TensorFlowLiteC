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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221028/TensorFlowLiteC.xcframework.zip", checksum: "a2985328794d3cd55874b3640e879d81b0a3da9d355a5c09e62a6811ae89a07b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221028/TensorFlowLiteCCoreML.xcframework.zip", checksum: "426867d14db4daeb9439ba193207678d208adb854e24f8431de5983a28a9b1e5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221028/TensorFlowLiteCMetal.xcframework.zip", checksum: "f43176fa22f7a5a337a34ff71ae3f0fc49f694be52a85f1c7625fab33ea5fe2d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
