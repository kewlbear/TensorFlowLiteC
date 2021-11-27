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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211126/TensorFlowLiteC.xcframework.zip", checksum: "6706983c5afd10eb8090a8d47f69caf8c577e32f51a47b2a83f19e904ef8cfe5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211126/TensorFlowLiteCCoreML.xcframework.zip", checksum: "90ba4044dac017a4159e8a620eae624dce8d0ccb3e1daadbdce2777f2047518d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211126/TensorFlowLiteCMetal.xcframework.zip", checksum: "bf84a43a575ff201dee727cd5714f7ed6371f3ac6459e4a2aab96e005cca6c69"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
