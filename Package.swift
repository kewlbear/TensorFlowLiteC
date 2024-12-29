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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241228/TensorFlowLiteC.xcframework.zip", checksum: "a83a690c0eabd27995a8f4b0c2d821ebdd975b6c72771971bc8c4beb66bc14c1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241228/TensorFlowLiteCCoreML.xcframework.zip", checksum: "33edc88d441429ed754bf0d8658d50245b5949704a3b863b548b912e3e047782"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241228/TensorFlowLiteCMetal.xcframework.zip", checksum: "c28047ab045de81c20506dee39de02e053ca759778c83dee301260bf6d1161f1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
