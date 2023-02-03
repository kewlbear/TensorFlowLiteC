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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230202/TensorFlowLiteC.xcframework.zip", checksum: "d3432de02f0abc6c5c1ce0b2bcf0091ea6a92196eb0c0a8e96ad2c65afab2b82"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230202/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ac949a37549338ef350155ea3a792313af5da069edd255dd23443360ac7a58e7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230202/TensorFlowLiteCMetal.xcframework.zip", checksum: "f3b3e976868194a891389f79ece266224ac73f62c4e95dcce5d30917ee209d69"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
