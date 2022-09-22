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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220921/TensorFlowLiteC.xcframework.zip", checksum: "2186bd33edf97ba7dc53bdcfcaee7ee963764ae98f7e14105738e3efbed6494e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220921/TensorFlowLiteCCoreML.xcframework.zip", checksum: "39563dc20493801d5e5d96992d0003eb210dcc8e7dd2d40756035e4dd15c05ee"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220921/TensorFlowLiteCMetal.xcframework.zip", checksum: "939aaaaa2ff43109b539bc573b6b9b6dc71788254fe9e7d81beec6f293436380"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
