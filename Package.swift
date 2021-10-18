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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211017/TensorFlowLiteC.xcframework.zip", checksum: "2b333f94955b33fdf2de9972ff4d75622aefdf08e8e7a8b7a33d835835ffa6dc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211017/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e1e378c089a73d08250183efc5851877682a1dc56ca839f5fac34338e6bdcdc0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211017/TensorFlowLiteCMetal.xcframework.zip", checksum: "c5d2ce0b275cfaf6b2e6dc4e0406b5ba3796a832fd550e97b7776523bb57d09e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
