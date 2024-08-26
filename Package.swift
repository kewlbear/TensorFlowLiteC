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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240825/TensorFlowLiteC.xcframework.zip", checksum: "44f01bac716eafa9dd4380628498cf7593aa2911e7b63dfb0c5695fe587001be"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240825/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fe35f5a6730866246f455cd4cf51e7abfb934555225e3e3865b18afc0dec1619"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240825/TensorFlowLiteCMetal.xcframework.zip", checksum: "4be9c2100ab9cbecd32629b54598a1e9e350d362001415f702c8a5882162abce"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
