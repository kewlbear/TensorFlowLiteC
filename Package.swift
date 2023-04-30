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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230429/TensorFlowLiteC.xcframework.zip", checksum: "a595b2c5ed2bdae6e9e66b5313b960df7f2452fefd8367d818421520b3379a21"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230429/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4ee1e8d0cd5445064401075a38d4c4024b96c364dcd06fb69493df57e59438e1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230429/TensorFlowLiteCMetal.xcframework.zip", checksum: "3f3a35b4b77d6302c0e3117660aa2977ee4f9cb52ebeeb00cae45732ab1d74df"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
