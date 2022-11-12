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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221111/TensorFlowLiteC.xcframework.zip", checksum: "94e1810ef95ced58dd9624653e281bb4afdf9e1f29748dde346c27834767b661"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221111/TensorFlowLiteCCoreML.xcframework.zip", checksum: "531dc0a562a71b804c5f0b4aa4d3a94a9307b3318f4f2222e533dbf377e65d36"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221111/TensorFlowLiteCMetal.xcframework.zip", checksum: "8f1caac7ed57e912a579d45af6f2289bbd2792fab2a8a92a33d2b55687e9cb2a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
