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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250526/TensorFlowLiteC.xcframework.zip", checksum: "3d533ddbaa244e8043c695ff154dbc96306510c7984d76460f46ec73e5de8de4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250526/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7c409b7969c7d9e0d6db4c356d87407eb9f63931fe173d968f105cd668994689"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250526/TensorFlowLiteCMetal.xcframework.zip", checksum: "5344470e236b49882c60fe3d9b1e13180848d979aa811d63f1296df7a20d2d2d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
