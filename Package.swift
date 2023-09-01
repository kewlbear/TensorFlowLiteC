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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230831/TensorFlowLiteC.xcframework.zip", checksum: "1cbffa487651cbb621e581af765b93e9b8a3b33daa0bb998327931236b9a0da8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230831/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c5620489b337e3edd25899e28041fcfe2f740bc6dc03837b29eafd50992fefa6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230831/TensorFlowLiteCMetal.xcframework.zip", checksum: "8e0790fdaf4fea227e657b4ee22a78d6f028eb0efd0d0885254ffb941147fe8a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
