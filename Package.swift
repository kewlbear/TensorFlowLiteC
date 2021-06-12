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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210611/TensorFlowLiteC.xcframework.zip", checksum: "f061048556c91f5cddf52c0c530030ee1c1984c08a8cbf79f9e8a565d22bd4d4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210611/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ab3758ecb81b835e15609dcbd8e206e36e7ab7b05baaef595b60f8708a6c4bf5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210611/TensorFlowLiteCMetal.xcframework.zip", checksum: "db531bcd849fb4b74f44cb4e0c528ae94154eb2ded23632113ec64b21ecadcae"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
