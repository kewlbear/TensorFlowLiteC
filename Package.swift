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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241009/TensorFlowLiteC.xcframework.zip", checksum: "560b636695b700dfc4d9fa86baef67555f6fba061bdd339bd244b6c8b422e89f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241009/TensorFlowLiteCCoreML.xcframework.zip", checksum: "dffb1323d6adce9de5c15701b116d3c4c3f955c39bd0b5b2df965ad0cb6b82a0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241009/TensorFlowLiteCMetal.xcframework.zip", checksum: "6e13861fa4b5c3fe8f5c8a86eff3174042725499196468f135439f3a3e527e8c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
