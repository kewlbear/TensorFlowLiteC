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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210724/TensorFlowLiteC.xcframework.zip", checksum: "579893b499018e0afb4252e67ae4dacd9f033196e158e3111fb8d5cfa2cc3706"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210724/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2b62fdeeb3c270130ec5f7a1764fff508f99909759a6843238fb5ed531f1fd85"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210724/TensorFlowLiteCMetal.xcframework.zip", checksum: "d5849dd45d2500ccb2e23f833691b0ec32f191eed5a56827842ff419fdd30deb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
