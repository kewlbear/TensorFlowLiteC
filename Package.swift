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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231023/TensorFlowLiteC.xcframework.zip", checksum: "d0783f4cf2ee44a9ba91ce7a05f5bd96fb40192e207590bd841a8a120ed31d7b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231023/TensorFlowLiteCCoreML.xcframework.zip", checksum: "78e79248d63374572835e351ea7cdec46e07d565742aecc56bb271ec3eafb54d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231023/TensorFlowLiteCMetal.xcframework.zip", checksum: "e72d749f3a6ee4baba359efb8e74923d381ee07f90bea80d2c97e38762003cba"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
