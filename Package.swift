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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240725/TensorFlowLiteC.xcframework.zip", checksum: "293bcccb3d39f13183a803331aa6fe32c579237f6a23b562183ad5713f05a536"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240725/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f68649dad376179422193320932456ddb6cb64b89c8e52f323482e32592551e9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240725/TensorFlowLiteCMetal.xcframework.zip", checksum: "0bc8fe523b5c6b88d21be172a343032071aba578a0fdf575a10e96f506ab1325"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
