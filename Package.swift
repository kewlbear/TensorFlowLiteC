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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220821/TensorFlowLiteC.xcframework.zip", checksum: "762d44f48f810c1096652453cfed48044246c1ef361e7b0bcca85ae4b49feaed"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220821/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5d1b14db7fe91be5c4859c84528d1cc9ce7446885803fbab9f058c795efc2e7d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220821/TensorFlowLiteCMetal.xcframework.zip", checksum: "d17dc1277d867ddd4efa12531ad11aeb5b235783c2c363d8b143858c7d7d15b1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
