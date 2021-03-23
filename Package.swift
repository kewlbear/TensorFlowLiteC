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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/20210322/TensorFlowLiteC.zip", checksum: "42d219ea45ee8ab315968e9fc9a3fc0400d27abbaf878b61344f014df64ecbdb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/20210322/TensorFlowLiteCCoreML.zip", checksum: "01079da8d00891a6247100e7c120190921a3b82671cb37af42133e1034578457"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/20210322/TensorFlowLiteCMetal.zip", checksum: "c83c7cc06d6246ea27fcc08e716e54345489490740aca0d2ad0fe92d2a8a173a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
