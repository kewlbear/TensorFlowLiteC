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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240805/TensorFlowLiteC.xcframework.zip", checksum: "7280d75b0f2c351d5ea9d6f4de325dfd9badc6fc9305f9fa2b3a186c93d9ace7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240805/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1e8f0a2093aea6b9a02a991b6e6f3bf3c5360086d0208ed1bd88c082cc0d4153"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240805/TensorFlowLiteCMetal.xcframework.zip", checksum: "b4f0642017372bb9dcc96d919a5bc2697c814f41ffa9ae5a518ec3618bcc17b7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
