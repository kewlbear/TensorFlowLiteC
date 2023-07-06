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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230705/TensorFlowLiteC.xcframework.zip", checksum: "5d7436fce5f6a8fb0d615631726a85c0abeb512af29ac43d9c2fd91ae2514532"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230705/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d933471c7d15647e2035438554f366aa8a91c6e620df550e6784da29059247b5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230705/TensorFlowLiteCMetal.xcframework.zip", checksum: "ca011566aadf21b4f9c9a052e3013f3a3a5643edb9a60bf834abb958a3facc08"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
