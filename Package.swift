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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210630/TensorFlowLiteC.xcframework.zip", checksum: "eb022f1a00b9ffd5acd5265df6535270050a406109262d8a755c2b2b778a748a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210630/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2459d2e009728b85babbe91ad69209aa95d7a27a02052ac6ff66f56886ce6af9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210630/TensorFlowLiteCMetal.xcframework.zip", checksum: "021e7682de0a3c755a84cb30a6c83dc639a8e8166589278311ba2a633056fa49"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
