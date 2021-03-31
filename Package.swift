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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210330/TensorFlowLiteC.xcframework.zip", checksum: "605494432636d589a4cf96f5b27720dd99221af5a9f41566615496024f228552"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210330/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fed5271260eb98e0223dd5681503c5ef44f7ad9f1a8fc08c92c1638cd221aed4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210330/TensorFlowLiteCMetal.xcframework.zip", checksum: "7c7f863402bab3c0dbcb208fa7a62aa9d80af1a3a7353e2cceec919cc1a90657"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
