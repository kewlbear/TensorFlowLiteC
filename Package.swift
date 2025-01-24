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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250123/TensorFlowLiteC.xcframework.zip", checksum: "f9160e0dcd20c576e06e6e5d86294c8cb53964257bea7b1d7f42458b38c17482"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250123/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e4e7c2e89d47d82739361036ee5079ffc74d110f9a76b78a4f9647ea6f6b6ec4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250123/TensorFlowLiteCMetal.xcframework.zip", checksum: "75a03c8be0e1c321b0a202c4beee5aeba2910f53e044d7261a6314f0449954be"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
