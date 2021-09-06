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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210905/TensorFlowLiteC.xcframework.zip", checksum: "deed426db139987b3317cd7289630934b7396c0a52dfc191ca63835534ad5efc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210905/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9c042f9f92fed64fea1d5ad79eac27c3239d95ef035154ec78cf20496cd1bdc3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210905/TensorFlowLiteCMetal.xcframework.zip", checksum: "99ab75e1fbbed39e168ef701e9fe6d926546632313d184fc6de7f9abca0b5201"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
