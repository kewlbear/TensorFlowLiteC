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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210401/TensorFlowLiteC.xcframework.zip", checksum: "d246dffe0a4e22b132407a48a99d7396f64151570159305bb466157782e84cea"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210401/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6eb7a4d22145ec25a4fe4490eb452bdd00d166097c1b77e970222903a3f81006"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210401/TensorFlowLiteCMetal.xcframework.zip", checksum: "79829cbfcdf514104b0a97f07de197ddbc896f149caf456af5233b904656b314"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
