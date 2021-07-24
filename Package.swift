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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210723/TensorFlowLiteC.xcframework.zip", checksum: "65bdd1a114e3c7471af703702cb47b1ff49fb6b09fe9a9149c83fab561410703"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210723/TensorFlowLiteCCoreML.xcframework.zip", checksum: "67442b6727792d8bb0945ff4b3389ea53abf3fa754cac1dfda56091cd82a2fb9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210723/TensorFlowLiteCMetal.xcframework.zip", checksum: "2231e6060a539689b0e6c09e3c03ed170fa8e3edd580f14b314630739bf747f7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
