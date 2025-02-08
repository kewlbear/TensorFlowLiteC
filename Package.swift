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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250207/TensorFlowLiteC.xcframework.zip", checksum: "580a7bb04214786f6a5759a6074fedf533d9bd6945bc4ea75ebadf73e415ff20"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250207/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2b1af7e93a5089c5bc02ae9b875e127ded22eeebb5212f46b6c38df30116f6c4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250207/TensorFlowLiteCMetal.xcframework.zip", checksum: "061e520c84f517c8d5d86cdab51273a1b0b229222837bf85cfe0e3fd65e47a19"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
