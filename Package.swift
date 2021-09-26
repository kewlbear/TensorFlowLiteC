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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210925/TensorFlowLiteC.xcframework.zip", checksum: "8b1ac4c6489e22df3b8762c4dab285a3d05cbd5480a847e110d58ae2a8de486a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210925/TensorFlowLiteCCoreML.xcframework.zip", checksum: "56a1dbf2f399a03a9f4bb7dab20474712d24d37de24cd70bf206481743508cfb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210925/TensorFlowLiteCMetal.xcframework.zip", checksum: "d7543095a1c5786416824cfbf910d328cd532410b65c2dea16e3c8d1195e21ac"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
