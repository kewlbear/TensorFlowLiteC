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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250225/TensorFlowLiteC.xcframework.zip", checksum: "42988c2b65c10940a42afbadbc6b04f18eed62f07640fc6bc8f9f612c60fcb8d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250225/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9365a8d9d0babc08fa9b7b23355a356184e538a3e7e43ea52fbb1ab7eaed19df"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250225/TensorFlowLiteCMetal.xcframework.zip", checksum: "ce720e7a11e2a36beca8db12b1813bf65573a0b8cce0f62a248ccd5eb19d60b2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
