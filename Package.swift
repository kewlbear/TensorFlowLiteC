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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240602/TensorFlowLiteC.xcframework.zip", checksum: "5a40f0c05bc6c1624353b8b7a0eb73fd74f0c5f78ccfeeb0d3ebfe9e4d2758b5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240602/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6b71f806f79e942f7143f412551b66b40fedfab2feca9bc0ce4c1dcba7da64f3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240602/TensorFlowLiteCMetal.xcframework.zip", checksum: "ae674e4d3f2f9e195796aa3c385f98a2dd586e013053219d37e295223741a805"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
