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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210603/TensorFlowLiteC.xcframework.zip", checksum: "0b4977b4eea1bc4f72741da45c16df5c0863d53e02737913e01d0bef0c7be458"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210603/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9984a269e0cf4162fa5a7508d8c5d25443a4348750e40ee8d69fffc95b6c5086"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210603/TensorFlowLiteCMetal.xcframework.zip", checksum: "1ec3cec09c53b90009dede69a843647e2009c4cd0b36ab2bf0ef3855ab170c57"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
