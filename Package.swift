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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221211/TensorFlowLiteC.xcframework.zip", checksum: "d12a38694d59f202b61855edf711230f1ef43e3d3aabf7f78e35e85a4e79a733"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221211/TensorFlowLiteCCoreML.xcframework.zip", checksum: "414802f0bd6518aa346ccbae77e95bcd6f6030d964169c56a825e44b94c35e98"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221211/TensorFlowLiteCMetal.xcframework.zip", checksum: "b1a3110c5e48368381f3873d19e41083549a9e558239da840617e5afc7eedcfb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
