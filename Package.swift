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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221012/TensorFlowLiteC.xcframework.zip", checksum: "b3807e17e310f2388755e9ef001ece7e1bb17d4ae43c169e26198d46d243bd2a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221012/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6ff87dff1d2eead0e951bc39f2974929d92a029aab3215d06d93a18999d2fb28"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221012/TensorFlowLiteCMetal.xcframework.zip", checksum: "54b9accc204accbcf2211a03edcb41e56cd0280f683694365dabcdfd7da42011"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
