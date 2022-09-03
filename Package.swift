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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220902/TensorFlowLiteC.xcframework.zip", checksum: "4a7497f00488b3c7850bae29408a0cd4ff211c21a540f6621a51afffbc4f21df"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220902/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fb9c16fe760ccccdf5ffd4291e339e4881d913d1c19a3da28e59a499a3833847"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220902/TensorFlowLiteCMetal.xcframework.zip", checksum: "a3340f9231f77d9a8de1117134e3faf41e436c497e2aaa290c1cefa10e623531"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
