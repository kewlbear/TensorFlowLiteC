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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230908/TensorFlowLiteC.xcframework.zip", checksum: "badecd672822d4a105f4fb2fdf974ee67160ba64ae8796e4cf0184709ac90bdc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230908/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7444c7d3eefea3d2e363cadb83f4b90518072953c572b9576bc84abe619dd865"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230908/TensorFlowLiteCMetal.xcframework.zip", checksum: "d33fa5bb47a6104331ce8025ddd9e7c872d6fa171c78e0f4ada8dfa423400160"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
