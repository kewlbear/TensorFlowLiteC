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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230929/TensorFlowLiteC.xcframework.zip", checksum: "f3a2509d6fdd02ac5cb655d63315066a78d65c519b776bb2e4ef3be68e5877c6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230929/TensorFlowLiteCCoreML.xcframework.zip", checksum: "54c0219c9972d6966be762210e12742b72a2174bce0285f23429f8d6ede981c8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230929/TensorFlowLiteCMetal.xcframework.zip", checksum: "36e0dd62158638ad34beb33efa5050b4784b94a7013bf346f4a4e0242f5788ff"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
