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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250613/TensorFlowLiteC.xcframework.zip", checksum: "8270021f4a6ff0ecb899ce03554df5a834a3ec2dafe6d1cf5a8289664722df66"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250613/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f9a802a1523127a0729a8d6a4d22c15bda503e709cf4e561281e0327d0f6a926"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250613/TensorFlowLiteCMetal.xcframework.zip", checksum: "cc49ee88536166fa462a032a39a2eb958f4e81ab3db8a0c25295bf9d8b9c7720"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
