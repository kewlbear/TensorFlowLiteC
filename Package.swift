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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.9.1/TensorFlowLiteC.xcframework.zip", checksum: "e57ce698f2964d8cbb10b4540ecf05cc67982fefa62bb6e24bd6645d3d0c853e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.9.1/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ccfbbd46e2197cefe0af1e2329d44c35f97403de35c6bd77dd9ba11994dcab80"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.9.1/TensorFlowLiteCMetal.xcframework.zip", checksum: "0b8f10a80808e416116538695a7c6839129a7db92bd5e9e8717bbe91506a6d54"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
