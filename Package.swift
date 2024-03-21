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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240320/TensorFlowLiteC.xcframework.zip", checksum: "53d4cbe800a4871b87a5f23dac00cb9f946fdc579354cb9daf912ece0823f8a3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240320/TensorFlowLiteCCoreML.xcframework.zip", checksum: "50160edcb038a370696324810b2e380e96284a4f30949bfad8457ae6cd04ba44"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240320/TensorFlowLiteCMetal.xcframework.zip", checksum: "56e2f7cc14fa2ed36d5e0c8aecf3b6f32d7c938ba6e974e56e2070cb25eee455"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
