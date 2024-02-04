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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240203/TensorFlowLiteC.xcframework.zip", checksum: "be2d2025d6047bbc04f0cb00cfb5e657b760d4e94bdd09e2cb6b40166a7e243a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240203/TensorFlowLiteCCoreML.xcframework.zip", checksum: "054a7200be9fe508d52539238d841253f0dd7401c2a2a34678d3b6038dc26830"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240203/TensorFlowLiteCMetal.xcframework.zip", checksum: "ecf738868ed94afe13cf34c4eee2bd321e09de1187e5ed4ee8d478b134c9a2d6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
