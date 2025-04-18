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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250417/TensorFlowLiteC.xcframework.zip", checksum: "63c3bd17233362c0c32186ad76e1849afa40de91b47ecef6b9f27c6b3462fea1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250417/TensorFlowLiteCCoreML.xcframework.zip", checksum: "718764cffe2a168aa98508a72f4d9dbf1a4e25fac3ab3028eda2a681f57d16ef"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250417/TensorFlowLiteCMetal.xcframework.zip", checksum: "326083519bee75d6c55834521bc61d73795768c2e92e86553e9cb0f1435442ea"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
