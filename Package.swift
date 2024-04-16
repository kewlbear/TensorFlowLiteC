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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240415/TensorFlowLiteC.xcframework.zip", checksum: "d7c4747e4cb8b2f5e7735ca9f51c081e59b69e64e4b00496054e78f025680f13"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240415/TensorFlowLiteCCoreML.xcframework.zip", checksum: "db0c4f5f810f1d12bd4689467b3ae0a21fc6f87c65171b097f85b1f7f70b3677"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240415/TensorFlowLiteCMetal.xcframework.zip", checksum: "518d255ea54e4027818a995029ede8bbefd3ac119f9f215e2ac4a1f33d0fb4d1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
