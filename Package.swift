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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231022/TensorFlowLiteC.xcframework.zip", checksum: "32b9d951bd814fcb2be6c571349fa0535f30b99881f7313f73a0531d848174d6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231022/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ca817b4b66308ba7721bde3d7e51b2e6df13865ce7fc257e0768f3c624f59052"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231022/TensorFlowLiteCMetal.xcframework.zip", checksum: "16e9d5ec45562ae39242cd045c439bd72d1d564325cf35f0b0117769f664273b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
