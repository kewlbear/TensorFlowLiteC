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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231125/TensorFlowLiteC.xcframework.zip", checksum: "d11a33a0dddee2ed734df2b5c19fb19bdf358efe3b17324c7f8221c8e253a325"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231125/TensorFlowLiteCCoreML.xcframework.zip", checksum: "aaac99c87c23828c758bf366e0c8f817b1922e83e1e2845af14086d28609b075"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231125/TensorFlowLiteCMetal.xcframework.zip", checksum: "8d689fc56d3f10f9300c6f463293e9ad35c81ce8f98d76a677c5b5ab0d5fd119"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
