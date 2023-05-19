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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230518/TensorFlowLiteC.xcframework.zip", checksum: "5921dff870075c461688a901eadd0b2f931d755d35f4d4ba8cfd20eb5226f192"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230518/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0c916abb548b663f93989841cb85fbd96a997f0529a24c294eeb13218f40042c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230518/TensorFlowLiteCMetal.xcframework.zip", checksum: "e605574a8be51cf317067c3d4bea7a93f3bae83ca49b3ca196ed8d4460ee3572"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
