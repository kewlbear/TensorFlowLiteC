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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210801/TensorFlowLiteC.xcframework.zip", checksum: "ac069b89efb1571bf83ec18f0494e05c534968b35fb2b57a6ce1169d526a0709"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210801/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c7014de9143b43cf8ff3fd313eedd5a8b2995672f9e83e95efec56ede5e79d80"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210801/TensorFlowLiteCMetal.xcframework.zip", checksum: "4059226812a98b2d7f51aa9f91ba27b18af94b6ab8fad93f19b8afd6d648ff47"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
