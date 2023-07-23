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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230722/TensorFlowLiteC.xcframework.zip", checksum: "3e843ed0978dd1a190001c774a9fe3d56c4c08ff6bfdbc15b27c53b5fd32c4f6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230722/TensorFlowLiteCCoreML.xcframework.zip", checksum: "605eb0f7a2a0816ec1b416624ac42e6dc2acecc7101c845d249b96416101a5fb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230722/TensorFlowLiteCMetal.xcframework.zip", checksum: "a5c5eac2e434cdf02beb45003d067141be6120170681629e09c840ee8b4a10e0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
