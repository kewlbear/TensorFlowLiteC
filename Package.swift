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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230320/TensorFlowLiteC.xcframework.zip", checksum: "18fc291e83bfaca8ff7d0f3be385f463e36b5fb201d759ef633cbdfcdf67d38c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230320/TensorFlowLiteCCoreML.xcframework.zip", checksum: "efdf8f835839a3dd33061748146b608e7b5f27fd573a13c48bf6385fce478e29"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230320/TensorFlowLiteCMetal.xcframework.zip", checksum: "58df745f3526fed85a05524b6e0c401f6cdbccbb7e0ff48b1b683ee32d526c44"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
