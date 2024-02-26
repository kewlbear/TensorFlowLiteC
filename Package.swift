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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240225/TensorFlowLiteC.xcframework.zip", checksum: "dadca7952f0871a656762efda98a2610b31e08c317f80b873e2b182d304c937d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240225/TensorFlowLiteCCoreML.xcframework.zip", checksum: "35fcba4708f24cc58797b66a62e8a6fa00c6805bede0c3b9b0f543a651c6c006"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240225/TensorFlowLiteCMetal.xcframework.zip", checksum: "22c33e66124a7d934f25280f5b5699bf4e9b81850f5a9f16a7436338746cd39c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
