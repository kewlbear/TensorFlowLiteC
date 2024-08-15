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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240814/TensorFlowLiteC.xcframework.zip", checksum: "ad64722aad3d5e3e1bc51dfa9f625fbf3839d28afd18475854ab8ea5ba1b7d6d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240814/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4606e783d4edf72a199fb9dddf46a0ef42503140d85c8931e3584379f60d0e39"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240814/TensorFlowLiteCMetal.xcframework.zip", checksum: "fecb6b12cf7617f112b7d5832ffc9b53f2181582de8392719e512588102369d2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
