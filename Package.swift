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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221207/TensorFlowLiteC.xcframework.zip", checksum: "f23b9edac55910b728bb168ab78f76410632cee25a72e8c2dddd9b310a5d7dac"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221207/TensorFlowLiteCCoreML.xcframework.zip", checksum: "95cc446dea6cc1ec60d762a280739d7b58b68285886576a72cd1c55af577cbd6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221207/TensorFlowLiteCMetal.xcframework.zip", checksum: "2f3ce31176baa629879c897fda9b3b706120cf28893e365a8addcf04114e027c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
