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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250616/TensorFlowLiteC.xcframework.zip", checksum: "482711799358e97481371a830eac4cb47ec27eb6bb522cfd398ccb66865d1c1a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250616/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f6b6d9c5f085e26d0b454814995155bde7d9ab858f941296e9054798050a4457"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250616/TensorFlowLiteCMetal.xcframework.zip", checksum: "7fa61a4863e547e69150f91bd16a58925bc28ede73757602fc8e2d346e3d914e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
