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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231226/TensorFlowLiteC.xcframework.zip", checksum: "9a80986fcb48159243925cda6d274d7b7a25af8ece1b1b4b86b89bbc3cdaa69e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231226/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8482dee256d30cfa98b679ba5ddd48d8e7c2e187d41c4c2bf0ad534011d1f80f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231226/TensorFlowLiteCMetal.xcframework.zip", checksum: "9f50d7c158777bb09d2d505fb1cc3cf1e2b143cfaa79224de6671cdd41066f52"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
