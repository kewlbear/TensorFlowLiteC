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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221008/TensorFlowLiteC.xcframework.zip", checksum: "5d4bc45f8e39766b8455579bf0fdc3747e5763d4ffc36681bb96c95b84c4e22a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221008/TensorFlowLiteCCoreML.xcframework.zip", checksum: "21c2b8f0c658a7fa874bd44ffa9f3b6888bb2486e751a22759a316f754878e0d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221008/TensorFlowLiteCMetal.xcframework.zip", checksum: "548bb1af44be4796b9fbc3b604d54c4286bf1fd74b8979a214df5f8b6247f7d6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
