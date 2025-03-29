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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250328/TensorFlowLiteC.xcframework.zip", checksum: "ec24881fa9336adfa7e0e04813fd6d645564071da084cf04e800e3d541a52a94"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250328/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1a07ca362bcadba15195a0c616e6c5b397f075eb2c4dad5137a8be4a6c426b71"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250328/TensorFlowLiteCMetal.xcframework.zip", checksum: "bb55df0e8d772a28c6bc9f0ae52704887b5be4aafb8785bb5bce4c3f6d90d205"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
