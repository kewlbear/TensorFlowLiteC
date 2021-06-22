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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210621/TensorFlowLiteC.xcframework.zip", checksum: "c06a95156d3048a073274c2d36537664c519006e73ef7e3b1049c1fd7a18fddd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210621/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5f9c92d163e740d1bd61dbe6b8ba9330cc88de2a079bfe59d4dcc0263f151c53"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210621/TensorFlowLiteCMetal.xcframework.zip", checksum: "3723dfb401ecff76362a6003a4f7843bbed03c6268c6484346ec38a4e9ba0d3b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
