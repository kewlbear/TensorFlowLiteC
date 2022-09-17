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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220916/TensorFlowLiteC.xcframework.zip", checksum: "8247d6fe42e4767bde2c10ab72cc92e2851fbd04d3efe681bbe2760494f05204"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220916/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6bf3d1da12cc419d6d498a2ff50372291a4fdff2f02e64f721b14396fdcfe94d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220916/TensorFlowLiteCMetal.xcframework.zip", checksum: "ac1769cdbfd88044d9246f630dff449db79c2ebe5edca40890e6cfa9bddd5c82"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
