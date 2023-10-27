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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231026/TensorFlowLiteC.xcframework.zip", checksum: "61afdb733ae806dbcc7b6d82490708236ac00b90ed283bfe822a56ecdd643efd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231026/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2fa1d18e188fef716d91f0ff13bf3889d8d79c635e7e4d44e1f43c811a53ade3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231026/TensorFlowLiteCMetal.xcframework.zip", checksum: "1559f016fa9bde9e94cb15711f42b0b1288448e18035b9dbfd00716faf790bf6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
