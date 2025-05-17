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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250516/TensorFlowLiteC.xcframework.zip", checksum: "846b5962d518825d6fda2b6f91ecdda5192fe788a1e382cc7cf5e9cee4dfd93b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250516/TensorFlowLiteCCoreML.xcframework.zip", checksum: "10a9178c7e4b5a8dc9e72630bba6150d87d2e5e361e4ee3d42f3b23080523205"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250516/TensorFlowLiteCMetal.xcframework.zip", checksum: "18eb495b453491ba1b961fcda96b6026785c6f16a32a273860b1889e465a46c0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
