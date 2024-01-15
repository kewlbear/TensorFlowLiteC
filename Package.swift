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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240114/TensorFlowLiteC.xcframework.zip", checksum: "05aa5109ec15f8b8d256fc2dc6dacf6738f414c95ce9b45a2b164406b30695f2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240114/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e63f1e55795720e2bfd253a41f38410a54fbdd3698b9c773b21dabfa345b6231"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240114/TensorFlowLiteCMetal.xcframework.zip", checksum: "c38f916464fa5a6b2a129f4c66ba28648e4047d2620d4b100f30d0339350c097"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
