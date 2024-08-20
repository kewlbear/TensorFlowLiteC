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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240819/TensorFlowLiteC.xcframework.zip", checksum: "edc42de8903d6d41770bbed3e3b1a43201e33b5ab42d98063c668061070c056d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240819/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3b6221b7979f177b376acc0b70ead44e21cd92f8af777d045520b4aa9b355328"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240819/TensorFlowLiteCMetal.xcframework.zip", checksum: "ccddf8e900fbbfcdbac2a0a396e061b5a4f1465e471b083e0a8bc3d7b2073a93"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
