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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211030/TensorFlowLiteC.xcframework.zip", checksum: "201b66fad35d2c649a701f968fa8f5a25d5027edf4a863601a4eecf84b4da37a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211030/TensorFlowLiteCCoreML.xcframework.zip", checksum: "41991293c15baab9fe1102b39f59d4b0a0a683d1e6d963306beb1fe180ffffba"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211030/TensorFlowLiteCMetal.xcframework.zip", checksum: "fd4849e4eaebc7b58f60a85b76834f91ad2eecc12e2b0e445a59c1fd16fd6cc6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
