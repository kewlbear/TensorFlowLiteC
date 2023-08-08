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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230807/TensorFlowLiteC.xcframework.zip", checksum: "c425597e084acc3fc3a7a8cf9720034ffdea328b15b0cd6884f76929bc286abc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230807/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9e5f619162146e9c0f931f2a6a8bf1e0cd05113bf2e6f6890fb7c81f66dbba41"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230807/TensorFlowLiteCMetal.xcframework.zip", checksum: "cf5e29360650434364b9ee7672bc01cb81f1c4d904b27e2b03bc1e26a7f77671"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
