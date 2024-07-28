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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240727/TensorFlowLiteC.xcframework.zip", checksum: "66075baa544a366e36068d3ca0ae1211855c4df9e721ef080a25a94706411e4f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240727/TensorFlowLiteCCoreML.xcframework.zip", checksum: "983d5c8aec0fc9b8399577f2ea49bb829ef50e1210b39462d7455ca797b923f4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240727/TensorFlowLiteCMetal.xcframework.zip", checksum: "f9df575c6f933024dabdeee61f850ecaee95030949ebbc58399473eb6de57766"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
