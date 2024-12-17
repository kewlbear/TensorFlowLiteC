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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241216/TensorFlowLiteC.xcframework.zip", checksum: "e95d9f1e985921b9782b74aafacd150e6ffca52fe1f1d922032c700c692f0801"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241216/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d667d268074207bd6b93489f6ca6ab574903be519c9a93f9a7dc20467e1ed6aa"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241216/TensorFlowLiteCMetal.xcframework.zip", checksum: "47d4743d4a3b4ad199ee00d25221e2f0080b857b5f92f84a84b70a132692468d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
