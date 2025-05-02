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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250501/TensorFlowLiteC.xcframework.zip", checksum: "35ab9907e261509ecccaca15a2894c23934625a372107a368b30ba0fa4e2066e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250501/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3ab9e2540aa929031eba637d4bdb8a68ebe9f59420e9de3a87d1b5f8380240a1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250501/TensorFlowLiteCMetal.xcframework.zip", checksum: "9d68bb308f25952b96851da910f3dc8065e44962e7d6cc8f517401bafa808945"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
