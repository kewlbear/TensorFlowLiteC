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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230816/TensorFlowLiteC.xcframework.zip", checksum: "01421c9ff6e9386a4acdf7b9c9633be99dc928b42b45b97f234552d92b48c29b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230816/TensorFlowLiteCCoreML.xcframework.zip", checksum: "11ecddae8adfec1a6d323fc4bdad824ab9c788cce5b357637e02081338a43ed7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230816/TensorFlowLiteCMetal.xcframework.zip", checksum: "28e86b779dbb7a987f67c78ae712b4ab6e1247b98b06a59a4ff226ec149afb46"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
