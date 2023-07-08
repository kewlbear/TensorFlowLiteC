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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230707/TensorFlowLiteC.xcframework.zip", checksum: "c232e516282506614985b51fc5cc957531d9864818bded41500ede768fa375f4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230707/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4e624b0c34cd8a86c8f204b9ad4b551091fd1a17ebb24bfd2ae595df958ff000"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230707/TensorFlowLiteCMetal.xcframework.zip", checksum: "3fd220992d5fbcbca97d5d68a3488c7392539523058e7153c7da0c0f9e9f5cc7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
