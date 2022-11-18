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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221117/TensorFlowLiteC.xcframework.zip", checksum: "e382f00a5ed6dbf2b576079e3b89a5314c25ebd44bd5dc1a5f55196854475f2b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221117/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2b8407a3d3c145e2a29efccee6217269c0c2d33476acf1b143a20e664ccdf046"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221117/TensorFlowLiteCMetal.xcframework.zip", checksum: "bb674e4139c428009f2c42b3d5ac9bab36427565f72df212751d833fc10c2634"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
