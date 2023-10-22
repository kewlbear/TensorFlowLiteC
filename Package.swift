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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231021/TensorFlowLiteC.xcframework.zip", checksum: "60cdcfa8810951a142dd1743d6d5da099228362673f7d870949c435ba007a95f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231021/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8895556ed66c664c06d63ba7dcbbd3f3b250efeb7d6d517b677893079e99787d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231021/TensorFlowLiteCMetal.xcframework.zip", checksum: "4a51b564b7f9ea60f143ddd58eb05120156b034830e8234d5d78fa9bbe82d33f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
