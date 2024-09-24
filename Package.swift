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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240923/TensorFlowLiteC.xcframework.zip", checksum: "28d8f3cfda76629eec5f6cc18542767c2021a3e5606752c6eafd09ae8f800beb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240923/TensorFlowLiteCCoreML.xcframework.zip", checksum: "669c83c809c275999996d00e2bbcbfdbd15e8356737e8c437f41806825df7d6a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240923/TensorFlowLiteCMetal.xcframework.zip", checksum: "138d0291c529ae6e0b767b8b78b9ceae9aade6fcd5d1e705736d8afd2cb05150"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
