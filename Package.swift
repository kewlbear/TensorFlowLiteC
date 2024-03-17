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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240316/TensorFlowLiteC.xcframework.zip", checksum: "04b6445e85488246ff2848ddce6ed5fae871e32460f1fdcdfa59905c4f9a53dc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240316/TensorFlowLiteCCoreML.xcframework.zip", checksum: "148a186e6a3617543b93f3f5af97120764e0ff942269af149e6a4bfa4e31bcf9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240316/TensorFlowLiteCMetal.xcframework.zip", checksum: "a3f4058162a7420432f9c0c8aca5638f7776fd7ef014edee74b5d14e3251095f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
