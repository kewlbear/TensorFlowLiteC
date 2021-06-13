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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210612/TensorFlowLiteC.xcframework.zip", checksum: "366ddb1878f55e3417f64cbea09f403ea9de8314b1edd29e154285578452ed08"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210612/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c711908af599dde38baf2ccc6ba28ffa601a5d22026804f4cf17076f8f752e61"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210612/TensorFlowLiteCMetal.xcframework.zip", checksum: "86aca03a641c56c25eb43f91f4f3396f3ffb2b3fc0d126080ac9d9268c18dbb3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
