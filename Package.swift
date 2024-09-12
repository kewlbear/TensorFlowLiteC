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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240911/TensorFlowLiteC.xcframework.zip", checksum: "2d3f07d8da00ca969a2e73b656b3d9154e6d8441c1b5fd45f79c50db19b2ff04"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240911/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f30e95cf3e6f421154426683560002b650458fffacc68dbe61380084f383b7a9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240911/TensorFlowLiteCMetal.xcframework.zip", checksum: "0b199f585c299c50724e23574ddf898f390a164baa3111d20ae363342bf4ef2e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
