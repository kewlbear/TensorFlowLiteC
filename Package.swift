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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250422/TensorFlowLiteC.xcframework.zip", checksum: "ca71d09044cc7ca0067e8c230111615212906f130ce95f8d414f975f8d0b2478"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250422/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2b2e631303368339d4293f6032f86442b345aba7110822d79803c57af1589179"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250422/TensorFlowLiteCMetal.xcframework.zip", checksum: "57ff4a2c8fcd43e90604b2a3fd01e1409d94e0604639b9ba73c938dd876dd1c1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
