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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210831/TensorFlowLiteC.xcframework.zip", checksum: "9b753639bc03b629b7d748e28d6de6ee072242809fd677295bcd780e34cf03b8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210831/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b48c6156413e694a9ee2ffea8c064a9b0c5ec7568efefeefa29ae8a3d915b195"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210831/TensorFlowLiteCMetal.xcframework.zip", checksum: "d5a3f7c3c134e11ecee8ba9f0c28db841d666995d296aabc3accf814a9e35bc0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
