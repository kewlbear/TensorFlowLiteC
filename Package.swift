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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240912/TensorFlowLiteC.xcframework.zip", checksum: "8e08cecb54940645255510c57b230cbdf0cec0165d381cd038a650f5b1ae2106"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240912/TensorFlowLiteCCoreML.xcframework.zip", checksum: "20059dcd4729bf7841ff998afd13775dd9d55bafe84b3a21b00889fcbe732b10"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240912/TensorFlowLiteCMetal.xcframework.zip", checksum: "5f8156782b1f20afa3f4bfd3b3c97d242f5b3fe9f805339fe1cba6771ef29001"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
