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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240501/TensorFlowLiteC.xcframework.zip", checksum: "527a7d5478d5636606d651d879be7715360a6731c4bc8f45982ac15adb07320c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240501/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a9b8b88b51789b09784c1cc4f4947b658f3131fd4de907c10718f2f298ffc8cd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240501/TensorFlowLiteCMetal.xcframework.zip", checksum: "cc1910730ca28f592786ea566130c1c9452d3288b80200b6b363fcec3e3ae48d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
