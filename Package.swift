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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240728/TensorFlowLiteC.xcframework.zip", checksum: "bae3c9ceda1a237c8274859e3574d8fce91fa8ffd5d5c196a906286002a33ba3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240728/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ddfad089ccce2a292e26336e5cf3f3c05dbc73ff7523a177c87d48b6dcaa4194"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240728/TensorFlowLiteCMetal.xcframework.zip", checksum: "d6a2acf5107cf9fbcb7d14800aa9b5731de5f517329e026c2a705a882423e7d4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
