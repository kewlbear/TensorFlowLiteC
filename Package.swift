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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210512/TensorFlowLiteC.xcframework.zip", checksum: "e0b38719fcbe86f42350ee4d31dd50dc97f91a474bdcf36563578795d7b5f7e4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210512/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b784d8c77f93e8426d258674460d84ceb9bb3f3ae640559e1e10d1a67dc62c29"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210512/TensorFlowLiteCMetal.xcframework.zip", checksum: "23724fcb39078cfb53a5fa6ed660b39c04b9b38a4a4ed5bcfdb752d2d6e2abf0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
