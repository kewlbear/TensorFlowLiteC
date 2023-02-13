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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230212/TensorFlowLiteC.xcframework.zip", checksum: "2e4bbcb0d1162becaea5b4880056bc21317429ed58fa39191018ca7825fc4925"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230212/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e6f0ec216e948323c0e7292e3ffb9e9f4512e0c04803dad5398b6e1ac1e73db2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230212/TensorFlowLiteCMetal.xcframework.zip", checksum: "0ff559a35d56e32e8cbb371def6342a03439068dc4854376dee6d81da75447ad"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
