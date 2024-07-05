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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240704/TensorFlowLiteC.xcframework.zip", checksum: "2d8cdc7be6d1c485c99054c747355de51850d1e3b831f2d4e7d39c83b16fb651"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240704/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2ecbac8924b023cf46c4297afb93e2460aab721782df748841e909c07cf49bad"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240704/TensorFlowLiteCMetal.xcframework.zip", checksum: "ee69c4eb55ebf53f16de7ca0704d97e9839e562b5b6e8815c07c95f0de554c88"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
