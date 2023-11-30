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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231129/TensorFlowLiteC.xcframework.zip", checksum: "8bf574d758003b23e65808e652e668eeaa759f48199e5b7c04b1da59ad63e3a1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231129/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0d50f771aa642238c8cc96c3b650d0d411793d3248a9715d37db94060eff3331"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231129/TensorFlowLiteCMetal.xcframework.zip", checksum: "cc4172e7c165f913c7dad767cb83ee1f6c18e2fdaf25f6a1282a2e4471b7ea1d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
