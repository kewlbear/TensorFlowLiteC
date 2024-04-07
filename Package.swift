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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240406/TensorFlowLiteC.xcframework.zip", checksum: "a7ed07a918fd86304188dc3eb9d145685812b1175e66d0726ca44cebbbe92704"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240406/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3044dc79193fb35d7d731b7c4e171d3ff291a04a569bd13700c70354f93e1321"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240406/TensorFlowLiteCMetal.xcframework.zip", checksum: "3199cd7e7d34c1e463f09b54e02acfd12dcedf17aef40dafda61d2c1acaccbc4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
