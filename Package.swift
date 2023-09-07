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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230906/TensorFlowLiteC.xcframework.zip", checksum: "69ee7ad4e3368049179da4c0f5dfaaf0bab199c4efed7487c9411ee3413a3a73"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230906/TensorFlowLiteCCoreML.xcframework.zip", checksum: "270bdcbcd4d799b2336f1f22e65e65700c90ee4516032b97b7c049f1447bae0b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230906/TensorFlowLiteCMetal.xcframework.zip", checksum: "c2dc31238678d9d5b17e87403da70253426c9857a1a29304d4e21c7f88129db5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
