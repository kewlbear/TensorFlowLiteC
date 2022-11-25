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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221124/TensorFlowLiteC.xcframework.zip", checksum: "26789adb28edc4d1e82edaa57c8e4d3b8a3b35ccb5a478c42b33b0597a14387a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221124/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a070eef38246d874f773a14ec3f2679f9a8b3a8fd9bb4fa7af8ec1551323d4ed"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221124/TensorFlowLiteCMetal.xcframework.zip", checksum: "14734725e867f8906102cf29a038173455103315284f77bc98ee24985e6d8ffe"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
