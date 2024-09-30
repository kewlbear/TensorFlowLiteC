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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240929/TensorFlowLiteC.xcframework.zip", checksum: "582e58e22fbbd7239262cb2555a754a2aa4e277d308789903e32f18208359375"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240929/TensorFlowLiteCCoreML.xcframework.zip", checksum: "284aceadc0c36196d57eb708c39853a9aed298eb6ea4427a05b9711cf6bebf86"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240929/TensorFlowLiteCMetal.xcframework.zip", checksum: "ee73ca0e6677debfe5909b3f9d872cf4e28a7265535e815a827c65228f8fe73c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
