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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240922/TensorFlowLiteC.xcframework.zip", checksum: "612c7808a65aa5c88156df80c315663eec8fdbe33a52879993a44cc63f057555"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240922/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c07449b3adfcb3b3d05d2cd6de0e084abbaf441f7827510b6508025771301511"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240922/TensorFlowLiteCMetal.xcframework.zip", checksum: "cdebefe2f4bb086b50eb0875f3aef0e7add6bd91b529738ac16f0817f4ee5662"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
