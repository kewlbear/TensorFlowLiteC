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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250105/TensorFlowLiteC.xcframework.zip", checksum: "3f5bb097816032e997af8f49fbfbf93f7df70e910cab2872ae3d4d40c8566449"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250105/TensorFlowLiteCCoreML.xcframework.zip", checksum: "df0bc299b0040c7d612617d1c77c18d0ad57125195fe7c4fc2296bf16a2799f5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250105/TensorFlowLiteCMetal.xcframework.zip", checksum: "231eb471a81d6049de816a8dcb44991cb9d2f9778a31ffd9137183e796049490"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
