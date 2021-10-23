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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211022/TensorFlowLiteC.xcframework.zip", checksum: "c75a11d2139bcbf51d88a0fb5041a221ceb1c8709f9f50c7f139e831a333a7d2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211022/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b03d0f1f98a79f5d19c98002aa6cbfe1f53e8643b0879e61990b044701541916"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211022/TensorFlowLiteCMetal.xcframework.zip", checksum: "b72915c5d5b70ebea55c5a83da4ce97f3ac9cde7d1d9a064efe8bc1e35d5ffef"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
