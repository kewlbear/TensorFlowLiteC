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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250107/TensorFlowLiteC.xcframework.zip", checksum: "7ed0e5d72c6e9fed496efa456fa71834b1d4b1d3b5943a096e7fb5b3478959a0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250107/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e816022735a666ae86d18f0cdbb4b47f68f405629fbbcd0ed4a9d20cae472a35"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250107/TensorFlowLiteCMetal.xcframework.zip", checksum: "b02e8316b222699bf1b5872393eafbdc40d3190e8fe8cd3a617c9d9029f7895b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
