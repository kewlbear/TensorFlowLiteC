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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230330/TensorFlowLiteC.xcframework.zip", checksum: "04389ac84dec3468c7847372b5780ea1fe9559243870751e0a22e83119d51a65"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230330/TensorFlowLiteCCoreML.xcframework.zip", checksum: "afffd7c164584fabd56baa24855092b2a644755e588996f61ab0d6a99b6d281a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230330/TensorFlowLiteCMetal.xcframework.zip", checksum: "ae5f84040ffa3138d72b5458f1b4338dd6f64f7e92d638ff7ede6ce672a5338f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
