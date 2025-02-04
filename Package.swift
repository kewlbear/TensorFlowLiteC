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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250203/TensorFlowLiteC.xcframework.zip", checksum: "0c466ad1f5743b1f0cfdadfab6ca9fedd92c9f50d52cb30d620d3d8143953b50"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250203/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3f241de526dbb94a60eb11099f53e1b94d50abeb7dc14f5b1af4c87bce0086c4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250203/TensorFlowLiteCMetal.xcframework.zip", checksum: "a7fea162b4fcd751fbe6d792ec0ad9c700fd8ab95cea4ad92c87d69c71fd709f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
