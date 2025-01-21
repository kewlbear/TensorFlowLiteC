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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250120/TensorFlowLiteC.xcframework.zip", checksum: "14ddb6f3f4f0e8c89d51919d7c706e84f056cbb55dcccb88d184c23637a772ea"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250120/TensorFlowLiteCCoreML.xcframework.zip", checksum: "617d21c86b2c6763a72f53f72e79909cb501811775a6bcf5ab007e51dcc74ea8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250120/TensorFlowLiteCMetal.xcframework.zip", checksum: "f02fab918be468884c21477248cbe8fc48cc0c56d9dbb032be8a7758ed1a3529"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
