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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241227/TensorFlowLiteC.xcframework.zip", checksum: "65281b061c27afc3468e035efe3cf198562b579b94a4b4c9256c1fb96b96f643"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241227/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5f8808ef7c59ea2e2108a172dc8b9f2af45f9612b115e2ca5ee99b99d8a9470e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241227/TensorFlowLiteCMetal.xcframework.zip", checksum: "b378aadc875d3fe51e5bbddc5a7af989a0ff8344c9dc96e690aa6521637598c2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
