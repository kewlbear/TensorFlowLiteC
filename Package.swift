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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210417/TensorFlowLiteC.xcframework.zip", checksum: "410e9a247d417166e980cb5f418c8fea9501eddc76eb08e41bb6c060edf29ef8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210417/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7e3f6c94acd8f644feca00f3e493ed991f359e6aa38ac3ca17967655127ed36a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210417/TensorFlowLiteCMetal.xcframework.zip", checksum: "ab69df10a89ff2d8ae9f1abf9cf4c05d2d9ec05d91c1b996ba5d200f18928e01"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
