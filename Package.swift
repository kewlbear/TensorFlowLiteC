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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240530/TensorFlowLiteC.xcframework.zip", checksum: "69667297cd51415a017a481df4a289e1da49a838a417e7c97b7b9669903507e9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240530/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8ac114fdcdde40a3e1d1a16b89396bc28754178d55870408ab31ff9aad62685c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240530/TensorFlowLiteCMetal.xcframework.zip", checksum: "fb648bdaf8ccdf87be7312b36b97be3b29a908163caa3cf25c117467cd9c25f0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
