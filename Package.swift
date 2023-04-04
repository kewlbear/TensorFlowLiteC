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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230403/TensorFlowLiteC.xcframework.zip", checksum: "07f14c7bcbb54d643785b9466ea18eaed5bcf1fe06ae0dab7b5f811a32794e28"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230403/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ef866247bad6b76b60bb641ac3da99e884e689441f6b865b02307d22b63b9b59"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230403/TensorFlowLiteCMetal.xcframework.zip", checksum: "172e565169726dd21410558dac077a0d647923c9d9016e66ebd0f04716aa8589"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
