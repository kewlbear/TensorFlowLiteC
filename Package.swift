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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221102/TensorFlowLiteC.xcframework.zip", checksum: "a14e25f82b3d9c71991333eefcfeb2379885b890df1dcccc4960bea8639d0a68"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221102/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c135e41d5bb7e30f325ff3f3ccddd3d49ed6d850b8c128ff1bfeb037ce8335c9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221102/TensorFlowLiteCMetal.xcframework.zip", checksum: "5c54d4fab4fb4a14023d045ee2cc6238124da977b5b0a738e945c3890033a429"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
