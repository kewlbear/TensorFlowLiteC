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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240607/TensorFlowLiteC.xcframework.zip", checksum: "9f999df8a77610452410336c471c2c4a459eca6c043496b308ba50e204c4b3de"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240607/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c9c25c77d19ac5bf7c3d3363194794f5ed8b8e0e0ff1d51c2857b9ab873d582b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240607/TensorFlowLiteCMetal.xcframework.zip", checksum: "fb5debba19ec0a123cebcda599c57a7c02d9a33462310457ca23c82e5d7fd4b6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
