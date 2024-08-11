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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240810/TensorFlowLiteC.xcframework.zip", checksum: "c7f771c9afc7020e4fb2520b2a8329210e23511598b229565b4e908499fd091a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240810/TensorFlowLiteCCoreML.xcframework.zip", checksum: "80c87da0903971f54c3a8ad175db815105f3b6de233f1e13521f4070df84faa5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240810/TensorFlowLiteCMetal.xcframework.zip", checksum: "e2592240cad4437d2e040f807e3b78be953e254b3f18e6a5a6d8862acb584903"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
