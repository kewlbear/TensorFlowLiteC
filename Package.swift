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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221210/TensorFlowLiteC.xcframework.zip", checksum: "c0a1d6fe89160e42db31811483de722d85cff4d8730af1e97b9d092952afd9d2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221210/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5b3776d826240a6191df16a6f91be6bbd033fe07c33cc59ba98047b1e1ec725e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221210/TensorFlowLiteCMetal.xcframework.zip", checksum: "2c07b82995a9a6a9146e92907790287b3c36dbdd289d2a67371a2038d8c3dd1c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
