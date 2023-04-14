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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230413/TensorFlowLiteC.xcframework.zip", checksum: "a829ed242aeecae2231b63a0713632b7cd2ef97f28ff4336a64623a8bfd71dc1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230413/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2d937a8b7cb7c81f356d675f206ca245d31569a158de09235c9ecc5f49a0f1bb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230413/TensorFlowLiteCMetal.xcframework.zip", checksum: "c7b68b71cde37b0ca1cca7115dc106cf460c152a652da352b2db9602d3110f36"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
