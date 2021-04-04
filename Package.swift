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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210403/TensorFlowLiteC.xcframework.zip", checksum: "112e2bdb66390183ced5410e81d8e465c92893359d23c90857c2c710ce00f3ec"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210403/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c3345e0584dfdcace7fb2fc474d2a1ef27458c59d1a56c621f7a748893100012"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210403/TensorFlowLiteCMetal.xcframework.zip", checksum: "359857985fea5f5eacb8e973c7e6536de70480550da8bb2ca5c661da4444ba1b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
