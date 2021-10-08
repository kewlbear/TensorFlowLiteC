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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211007/TensorFlowLiteC.xcframework.zip", checksum: "19f092af01b5d346b711556bac21c2d3b687185620a28523bb6242260a89be64"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211007/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c0f2f418f505b0b3c499fce38f3e8a56e9ed29f6b17945196b5bf2c39f5a822e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211007/TensorFlowLiteCMetal.xcframework.zip", checksum: "bc9754ffe8b26eddab2d05a0269e305736278f04aac1a5be5de12a18e66898b5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
