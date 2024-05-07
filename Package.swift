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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240506/TensorFlowLiteC.xcframework.zip", checksum: "16e940873d0be417a1bd7be582ee97790aa64ac2bb55f3c27374115f1645a949"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240506/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d9c97d449e3c1e8ed0cb1f619642561d97cd8e84960841fba2ae4c201ada6147"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240506/TensorFlowLiteCMetal.xcframework.zip", checksum: "a185d3de7db3ad77ffeb1b0cd72f234030dcbb748d695d64808c59cf51b79f4c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
