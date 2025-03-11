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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250310/TensorFlowLiteC.xcframework.zip", checksum: "a145731d2ae6c59de742eda2544acc2306eceb2ee1efae69e56692740773d0b3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250310/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8d16a47b311bccdc9dff8c9bd6db28b55ca42f30443ae98da0227f9aeca42cb6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250310/TensorFlowLiteCMetal.xcframework.zip", checksum: "083b5875cf4ff2a925a048dfd4c7ba2c3e58f7d5db3a851062165f5f4a394d20"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
