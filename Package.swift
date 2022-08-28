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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220827/TensorFlowLiteC.xcframework.zip", checksum: "b2424d9fed9191359385d6287cf06f30d788aa3b35f5b2dc9c1d313cd9ea1543"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220827/TensorFlowLiteCCoreML.xcframework.zip", checksum: "faf697fcf97ddadbc9902e820c2ff68338630994c172e7026e756f804b48e1ec"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220827/TensorFlowLiteCMetal.xcframework.zip", checksum: "7259649fdae37b9c50f18dcde7b82c5d5a1141debe4fa1bacb2752efa9abe7d9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
