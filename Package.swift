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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250331/TensorFlowLiteC.xcframework.zip", checksum: "1fd8a2acc3bef6690e1518278887e52193546c66feb81625333b4f16fed767e7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250331/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4820142e08b949d7da23e5c36d7dc1990e22703e7cd2d47094b4d0ff4e8e2f57"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250331/TensorFlowLiteCMetal.xcframework.zip", checksum: "727836133b1e5a03a4e4118cbdfce9458fa591bebffaf51c607365b96d1e90c1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
