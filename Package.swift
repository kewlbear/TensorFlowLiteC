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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210617/TensorFlowLiteC.xcframework.zip", checksum: "45c231f99b43b0b5156a82411a4f354202c65ee407506d2ce63ef19fb55aa508"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210617/TensorFlowLiteCCoreML.xcframework.zip", checksum: "26b42e24416f9d7925c7cbf69732d1a0846fde532c110a7dcbcd0814df2f102f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210617/TensorFlowLiteCMetal.xcframework.zip", checksum: "5a9d0feab0900703764171eb8c453459d0bebc77ec58fa2dccf969f539ce5477"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
