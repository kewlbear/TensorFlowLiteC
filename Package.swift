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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210916/TensorFlowLiteC.xcframework.zip", checksum: "bfd58c7e076f59f4d38314ec060e0026b8136044b9771b97bba9755eff321090"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210916/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5b9ff7f7253f3f236b48dc06be0b1ef92414bc2c6fb82832389463e872c55592"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210916/TensorFlowLiteCMetal.xcframework.zip", checksum: "9af8c6afbeb02808049f172fb05f1a8b8af54c09dcfca1504de823500c45914d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
