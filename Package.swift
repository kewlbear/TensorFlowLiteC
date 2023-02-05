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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230204/TensorFlowLiteC.xcframework.zip", checksum: "9e25d220e2a8cad4bdc264b685a5078fa8124b1c7d2088d119b56f68c271a915"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230204/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4a90aa2645501a030e26954b30fac239b1d56f1e722b245f002071e3c9fdab02"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230204/TensorFlowLiteCMetal.xcframework.zip", checksum: "2f48c28655729ba0be85f2f41b6059b3ac260cda8d003462f934453fa59854b8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
