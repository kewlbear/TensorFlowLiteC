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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250514/TensorFlowLiteC.xcframework.zip", checksum: "85f9f510e78fd8ffce4edd67a8882468ea85c673d8bad62da6709ea8ce1094da"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250514/TensorFlowLiteCCoreML.xcframework.zip", checksum: "16a78c417b5732763ad58c9786d793843ad7b5339365abada7b413c0b0f71e5c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250514/TensorFlowLiteCMetal.xcframework.zip", checksum: "316489a0c7be553a337996e5fa773c68fdc4e2005f02f7dec939bcb077c7f41c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
