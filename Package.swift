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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210819/TensorFlowLiteC.xcframework.zip", checksum: "3fd7f9aa408bfd48f220f2ba95a403b0391bffab3f9da38aa989c7afcbfd06d6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210819/TensorFlowLiteCCoreML.xcframework.zip", checksum: "77556b0878da9c6460b5aa29bba84a96513fcac37d879aaaff3ac66efb49de06"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210819/TensorFlowLiteCMetal.xcframework.zip", checksum: "d577e59ae376a2235cf1497efc5492be32aa7a35197207da4e9985e8ea80d1f3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
