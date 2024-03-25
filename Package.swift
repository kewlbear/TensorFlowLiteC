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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240324/TensorFlowLiteC.xcframework.zip", checksum: "b488ad0b00791cce596a96dce4032cfb2c35b1d12c023879d9a63203aa376ff6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240324/TensorFlowLiteCCoreML.xcframework.zip", checksum: "08bd18220bba1f605593ab6398f8481f489da54e0d5dfd17247d3744edbee3c2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240324/TensorFlowLiteCMetal.xcframework.zip", checksum: "4ee5f412bad1fa85608f94add6fed3cbaa00d7ab271bdbf8f22553551e56c4e9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
