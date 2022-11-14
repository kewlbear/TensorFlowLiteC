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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221113/TensorFlowLiteC.xcframework.zip", checksum: "5311b4452189e3baddff07dd17ab4eb504765d559942108244d78b70ae14fb17"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221113/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ea7800e6ec24ed11d2a20623ff5d9d10be346d070ac2f1162e9a55de24ad97e8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221113/TensorFlowLiteCMetal.xcframework.zip", checksum: "d24436fd4eaff0dc3b2dc97a8220c904971f54e2dfc716b4f1f6b94f2842d441"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
