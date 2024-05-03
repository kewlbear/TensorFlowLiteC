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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240502/TensorFlowLiteC.xcframework.zip", checksum: "d583d9f3c29a783c1ee60c478a0dd1cefa86c0cdca5a36cc77e2fbd06c6a2c05"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240502/TensorFlowLiteCCoreML.xcframework.zip", checksum: "48e9b89965379cf489516386724dc966af3e8f9efdc607028801cae7f8493ca2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240502/TensorFlowLiteCMetal.xcframework.zip", checksum: "0b5a7c5b8a02544fec93bcfbe0867c8dbdc5d02a36307ec9e67a4d813634aed3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
