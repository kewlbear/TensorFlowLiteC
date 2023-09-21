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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230920/TensorFlowLiteC.xcframework.zip", checksum: "d20f0c6208d30f1879cb35bb86ec31364d05c6aa617b2c124893ab5924bb13cd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230920/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d892ef53038bf828e88bddb9897e48dd28ea0ae9ef51c9c636ae54535cd76728"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230920/TensorFlowLiteCMetal.xcframework.zip", checksum: "d8e4e70c0dd9c5d6686b7234560ca7592e451821998fc3187a918d34c0a20693"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
