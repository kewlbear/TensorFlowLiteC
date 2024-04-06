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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240405/TensorFlowLiteC.xcframework.zip", checksum: "2d795869284747435e8614b8dabd2073c0d8ff4e2545d19abe6ecc6c95e8e727"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240405/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5b055e671ed4ae11df554634d52d54c883ab7c9aa34f3b98805f484eccba92b1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240405/TensorFlowLiteCMetal.xcframework.zip", checksum: "8e0ce5ce91048e34327b766d814119cc6a060daa17238739e8cdcaa88911a55c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
