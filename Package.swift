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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220929/TensorFlowLiteC.xcframework.zip", checksum: "bee326a9e49fd0309de22bed221833ec86c05ec192a58ae1eda01b56e4b4f08e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220929/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ccc8b263ca6ba76fc5c41f2835337f5f0a95ff6cfb0f2082c9b1dbe4583a0821"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220929/TensorFlowLiteCMetal.xcframework.zip", checksum: "1d5533fa3e1bc895f96fa6c922628dcab242c8d7797a1ebb9c0b120b65c75629"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
