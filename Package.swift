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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220826/TensorFlowLiteC.xcframework.zip", checksum: "e3ee6b3e12f66397154106b1ae55ef75dd74d1b36587c369421956e36749ff30"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220826/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b126ac4984636fcf56f4136ee7c9a27cb93207546c1cd3953b7d9a52fdafcbde"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220826/TensorFlowLiteCMetal.xcframework.zip", checksum: "48aa0e31384fe8d750201cea13aaf73b2e82d9b5e9b44ac977fc430b2285e3c2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
