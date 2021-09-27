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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210926/TensorFlowLiteC.xcframework.zip", checksum: "0285f350e133385e6451fb19d13f26e084c5dc68b34c647ccadecb9d859b228d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210926/TensorFlowLiteCCoreML.xcframework.zip", checksum: "93b02ec564c2df9581a1f622f1e848d3ab70d784a6e055ae708727e784404012"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210926/TensorFlowLiteCMetal.xcframework.zip", checksum: "4ab820b303b8a3af48cedca716dad21ae1d2848b2740775df2220b29291ecad6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
