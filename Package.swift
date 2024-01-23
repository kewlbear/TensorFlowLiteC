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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240122/TensorFlowLiteC.xcframework.zip", checksum: "7c042ae4c33e56b25b0859617c9f247bd947feaf1dc7cf8f8cdf5a3ba0db6b78"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240122/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bf66c218b852bbf65b0c32d6362caddd54fedf4301dfac2270fccd7e4ef55467"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240122/TensorFlowLiteCMetal.xcframework.zip", checksum: "c52e82e306ab70ee9c7a93f8416f2e10c71a246e67ed7dd0bacd00018a33db29"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
