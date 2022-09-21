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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220920/TensorFlowLiteC.xcframework.zip", checksum: "08c33791d76714a6eac5463d3503699e9a08929ba5d8cb29f55fb6368b842dd9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220920/TensorFlowLiteCCoreML.xcframework.zip", checksum: "efe90ac38731d6a726c65b57c9d5612e905f3d3bd2a0724b0043850423a980e2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220920/TensorFlowLiteCMetal.xcframework.zip", checksum: "7917f5785511422cbd5b849ad08153b1fa20de1eac33ff26987144f2416e172c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
