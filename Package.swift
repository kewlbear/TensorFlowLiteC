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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210715/TensorFlowLiteC.xcframework.zip", checksum: "299681b377318d37a971faea0fdd6ee3a1d75c7886fa4d11ec1e678437687a9d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210715/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c310ae893490c655a225934afb505ac1f7088308c1a6381fc401a24489dd0a86"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210715/TensorFlowLiteCMetal.xcframework.zip", checksum: "215b556b2a8f29c299c6be9c7dab13af4002a503f468341532012bfc925c4962"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
