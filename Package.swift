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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210522/TensorFlowLiteC.xcframework.zip", checksum: "231edf10d72a749d21e199659a18c68127b2ac2416258950ce985a2f38467f66"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210522/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1cfed6199a1969b994da54ca2bfad45b1935e0e2ff2f1fd280bd531815a531c1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210522/TensorFlowLiteCMetal.xcframework.zip", checksum: "8757445f4f01aa8dd54fad99a84e3c79116d3b8abfe454859e289e037b2c5cc7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
