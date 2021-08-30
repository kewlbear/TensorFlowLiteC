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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210829/TensorFlowLiteC.xcframework.zip", checksum: "b95c5a19aa52051c086ad46807036055da81e1b06f979c2bb8fbdfe9045614dd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210829/TensorFlowLiteCCoreML.xcframework.zip", checksum: "39526d7809c4e226d85b8c6a3df25830dd7c0b28fd23cf7cb665858afddfb01b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210829/TensorFlowLiteCMetal.xcframework.zip", checksum: "756abe075ed138edc7a0ffc6fee94dc034a6544ca842b6edcc28fdb9711021fa"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
