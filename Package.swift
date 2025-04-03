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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250402/TensorFlowLiteC.xcframework.zip", checksum: "672ade7e5eb040fd7a84828f180bbc7aa5d382ac17dc329035aed7dccd0a557e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250402/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f563f051a245335f429fc2dbdfd2f24b52ba6120b2a0db34fdf50b4be21db3d7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250402/TensorFlowLiteCMetal.xcframework.zip", checksum: "8eead44729ec7bb4c3d8594e5ea9b9c3284b5ffcd53fea7f99ee261257267932"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
