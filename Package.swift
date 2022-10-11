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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221010/TensorFlowLiteC.xcframework.zip", checksum: "e34223d0fe4c264e61fc477d6ed21c2f48c36c8ddf1eb3950e2a4c2c38874d16"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221010/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a5ad6150d2164342970feee13663b16275ae44e5df135ff7cf2def88e0fa709b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221010/TensorFlowLiteCMetal.xcframework.zip", checksum: "7a49b938fae3c228f5c23551d5627ab7715635fa484318c74dab54e2a308ffb0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
