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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240808/TensorFlowLiteC.xcframework.zip", checksum: "145ba10bea82fc898ab50dd8c690757595948c4123c9e10017e06c964475170a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240808/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a2e3d57b648790851509fe92192ef172dd1b353d245bafa6664f7ce1ddb6440b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240808/TensorFlowLiteCMetal.xcframework.zip", checksum: "86dfe8c1bde23e29d63fb17fb103cffc06e1830107b501268c5e4df51f315e9e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
