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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240322/TensorFlowLiteC.xcframework.zip", checksum: "f604905e7a784409c97b9f1f92d4692c6371cea40d740120866b08029c85a931"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240322/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7da5950c305ceb22d5f8fcacb809c64385fc7060a3d2192031005b757af031cf"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240322/TensorFlowLiteCMetal.xcframework.zip", checksum: "35e44022ac50bba991b2619a322d852f9516c8444e2d13abe3227435eefb973a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
