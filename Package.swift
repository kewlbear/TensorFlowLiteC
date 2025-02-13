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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250212/TensorFlowLiteC.xcframework.zip", checksum: "f0bc4210e7931e0d8397ad9ce5e745533b25f613e50158522ecfa78ea18096f2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250212/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3b7acf245105879808cb7c4791335630f7739afbd776ffa0eaf6e0415bdf8004"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250212/TensorFlowLiteCMetal.xcframework.zip", checksum: "90a561a855cbf25508dc0d879fc2c87ce7b550dd6219c8e881b2a6749e86dc88"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
