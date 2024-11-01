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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241031/TensorFlowLiteC.xcframework.zip", checksum: "50f808db1ff1d88c71d03d95b69260420ba7d9bd89a2763dd377bc349aa1861d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241031/TensorFlowLiteCCoreML.xcframework.zip", checksum: "44c69cf900f8d4dd8886c8f099defb687cb86605ccb013788f0f3ce8f96fad07"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241031/TensorFlowLiteCMetal.xcframework.zip", checksum: "cc89db0277cdecfc33fa19098d38cf2213342d916c4e180872b45cfd18da9d35"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
