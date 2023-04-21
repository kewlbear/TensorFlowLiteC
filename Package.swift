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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230420/TensorFlowLiteC.xcframework.zip", checksum: "9e7309465af247e9c3373ac594782e5579b3ede24a524066faef3a499b558bd6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230420/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2fdd169d4d1c9d72259eb557bf31a54b7e704d20ae09fc52d3c00716461d6933"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230420/TensorFlowLiteCMetal.xcframework.zip", checksum: "711ac7306918e35e789d74e712b144935a0cbc16c42e3cefeb027ab627268381"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
