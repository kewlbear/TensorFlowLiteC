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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221030/TensorFlowLiteC.xcframework.zip", checksum: "246673b75d38770ec8ded6486f97da1e57cbdeaf0a5221d322272c82f52c210a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221030/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8378e106b5642cf953bc1cacb8276b8c3bc28266e370860e8e56de95125f4438"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221030/TensorFlowLiteCMetal.xcframework.zip", checksum: "d81b6c12c1b32ddff86c5741288cea5003b7ed4d48b6fabfd5bffdf6a6cd0ea3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
