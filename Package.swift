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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230424/TensorFlowLiteC.xcframework.zip", checksum: "4322fe14e9d55c1efef114b0dcd85e6c78837f72d082d928486ef478f61a2117"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230424/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8702e8929c302dfe7ea84581c5ac2ff8b71abf82a14fe3538e4ba046468484b7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230424/TensorFlowLiteCMetal.xcframework.zip", checksum: "b0e6e9c90af56b10172fe3186cf948d93c580b73411c78919f91c1e74248c67d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
