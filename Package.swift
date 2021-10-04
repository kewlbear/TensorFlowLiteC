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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211003/TensorFlowLiteC.xcframework.zip", checksum: "12ce76c1eb07fed407b3f3576bc9816918d5ff362940d613c812b2caa642211a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211003/TensorFlowLiteCCoreML.xcframework.zip", checksum: "054ec3829b7f4cbef056b2cbbbbb2fe00cdbf4812d93aeae2a9779283e076633"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211003/TensorFlowLiteCMetal.xcframework.zip", checksum: "d7d2d84945d426798f0f3d05c6e83b2ab9804319a6abe2bdcbf506c976f6613e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
