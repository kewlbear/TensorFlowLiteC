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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240919/TensorFlowLiteC.xcframework.zip", checksum: "78b0cceaa06d21ba8d092dd41a2416035e4fd236a14e960a986ed393a579b693"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240919/TensorFlowLiteCCoreML.xcframework.zip", checksum: "70d2251d49b37085b7e31606893c45191bc0550838c21723335cc3d7003dd44d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240919/TensorFlowLiteCMetal.xcframework.zip", checksum: "e07ef91139f7d99d917019abb192f0b8f0ee17cd17e5f37f4b34b9f30c8ad0f5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
