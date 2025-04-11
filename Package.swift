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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250410/TensorFlowLiteC.xcframework.zip", checksum: "5cec9c3fe537ae5a2f654b0266d17a53b9b432ba5a22acd513f29e64d50505f6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250410/TensorFlowLiteCCoreML.xcframework.zip", checksum: "07a438e36b1d0e8203f465f9a8cf35688e05f819fd0b362b54cdc185f50dadab"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250410/TensorFlowLiteCMetal.xcframework.zip", checksum: "4163891282633b6f64b38936c78e18aebdf539b3ae96c25cef4f12984ea606da"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
