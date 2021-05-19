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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210518/TensorFlowLiteC.xcframework.zip", checksum: "356f6b59fcee9db6c722f42168c8365a0ea60114c891c4b191fe43034b99c8bc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210518/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a352b61602659b8d22723faa4b787ebdfed04ea09b8e14d0245ea7b8f1c2b1e3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210518/TensorFlowLiteCMetal.xcframework.zip", checksum: "68b1de544bbfdca4123dc6c17357a6462e541aa392add37af67b13aac89913c7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
