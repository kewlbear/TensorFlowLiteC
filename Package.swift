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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240611/TensorFlowLiteC.xcframework.zip", checksum: "b702b1b4de805a95dfba02dc688fb83ee9620f242372de820c468aeb550a7201"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240611/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bbcb2cb147b4a3bf2d31b1821d6633abd400372594d38cd17d0ef97b398c6985"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240611/TensorFlowLiteCMetal.xcframework.zip", checksum: "bb899b4c35ecb559b36f0ca3c49bee802eed01faacb4ae2b543f0e7128b87b52"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
