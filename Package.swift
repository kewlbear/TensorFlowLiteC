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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241019/TensorFlowLiteC.xcframework.zip", checksum: "a20cc2a6080053acdc23e93c460739df1b1e57ace9fc6f5ef9356e97684b43a7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241019/TensorFlowLiteCCoreML.xcframework.zip", checksum: "be94f9f1881a7204225a40e2e6af2bcbdf5661449fb06aa2d96ba3bb1176b8b2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241019/TensorFlowLiteCMetal.xcframework.zip", checksum: "87a41bd994e385750a3e4723dc62d23ae5006fdd948d3e3943e9f97679420f73"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
