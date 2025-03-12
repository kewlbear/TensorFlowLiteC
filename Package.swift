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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250311/TensorFlowLiteC.xcframework.zip", checksum: "850c177697ae6eef0bffe581babdba1740277a0de59d64098cbed4600ab34227"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250311/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e4602124e0ba1b45f0e7226694affef22afa5ab65d9a3f5a268cd7e12ea7927e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250311/TensorFlowLiteCMetal.xcframework.zip", checksum: "f2ba3eee1369b0f1fcd79a0b6d5becbd21be35675f951ec7dab4588e83f0d5b8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
