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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210924/TensorFlowLiteC.xcframework.zip", checksum: "6f839a42a377dbc813b5b8792a9906d7042db0d766af36a79a75bc8997be8dee"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210924/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0a00876e3a17833478115eb82b43407699b32b85d0d1315825e56d92a1ff741e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210924/TensorFlowLiteCMetal.xcframework.zip", checksum: "48540d44e25a4fba723aa9db5321c8a99c9c820ace0319ada90db91f42b87482"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
