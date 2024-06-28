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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240627/TensorFlowLiteC.xcframework.zip", checksum: "10ee4377c7bf26c1fd1a086c2079f78fc8ddf2b3fe656fb2918bfa0bd9e1e70f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240627/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0a1b7bfb7639c4555dc111d23945c920cb8a29035ff6ab696b60ec110e12df9a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240627/TensorFlowLiteCMetal.xcframework.zip", checksum: "e84a1bce22b938d10cc537a63ec955e25d1605a53454f12933b30ac1202b2deb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
