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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240707/TensorFlowLiteC.xcframework.zip", checksum: "3d49dc28ba8defb4355c0c7980c40683c6f4415593416a9b3fe0cb7671916e40"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240707/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7b1b2392f313375bdfdbcb4bdb5bbc23a73f373226a68460eb14e10a338aa432"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240707/TensorFlowLiteCMetal.xcframework.zip", checksum: "ac32bfd4580e6770e5c084c34f8ba941fac693248d95ae1eb43f4ad066713a8e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
