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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210718/TensorFlowLiteC.xcframework.zip", checksum: "80421cc7a5e78402933253b230b3690e00adfd128f012098aa88b9211ac6349f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210718/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d9b309c3aea3d67bac69ff1b407c26b7f05aca21ab43c064ce96e45b778c140b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210718/TensorFlowLiteCMetal.xcframework.zip", checksum: "c8dda1e68b6d92aab4d0124a13353213df1b6eed3cd2927a1c566e98982970a8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
