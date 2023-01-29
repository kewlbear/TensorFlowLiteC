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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230128/TensorFlowLiteC.xcframework.zip", checksum: "8a0482ce7a3a43a5513d6d73b18ec31d06e43256a61ba53498175bea0f94c982"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230128/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9fe97fd092b5fd88421247946c78ac24b15ed519da15f0500a81d775c880e7a5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230128/TensorFlowLiteCMetal.xcframework.zip", checksum: "30cdfa76abb810148ae00ca1eaeb25651f7833ee49fa72bf15633011887c1993"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
