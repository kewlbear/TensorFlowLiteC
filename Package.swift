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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230820/TensorFlowLiteC.xcframework.zip", checksum: "3c7798fb16dfd626dd855bcb206826a4c54a204557b89b1904ad5c84673f8668"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230820/TensorFlowLiteCCoreML.xcframework.zip", checksum: "88456a490b06d72ecedbb3f5e9fbefa5e3714ce180ff690745a90aa720257f8c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230820/TensorFlowLiteCMetal.xcframework.zip", checksum: "131de2c3d903ab9e4383d44dad24a2ff48b8c4b372182b86ba640e8431c1f77a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
