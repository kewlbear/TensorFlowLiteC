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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230222/TensorFlowLiteC.xcframework.zip", checksum: "639b0f66c51d1316003ba25e25bf339e67ed59330aba6717c8a133da0b9c68cd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230222/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b0c5319eea91e244cba141d0a801cb9821ea9adb13ee150055c2b6ff17b03d57"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230222/TensorFlowLiteCMetal.xcframework.zip", checksum: "31449af03a41d15e79f38902c1998cb1d7d1c6348d867eeb3c19fca86010ebeb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
