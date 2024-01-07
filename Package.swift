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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240106/TensorFlowLiteC.xcframework.zip", checksum: "011dc56f8e452e46c734fa9ef6b9e10fbf82c8ed7b31a4688406a04ee8a9e8a4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240106/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5ffb2f18e142ced9302a80522bc5a0692445900b256194928c1b9b47d07e4e60"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240106/TensorFlowLiteCMetal.xcframework.zip", checksum: "e2a2573b4f4a7d5baef4494015d4c35c497ebb329bf06439fa52210ddc733bef"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
