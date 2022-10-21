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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221020/TensorFlowLiteC.xcframework.zip", checksum: "fb7b87a2dea6a582d2616edaf2b7d7d6cb21d1d355d2aaef50f3fc1995e495f0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221020/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6de06f2911f6ea4f4bb7477a7494a1f90e2848af6d60900243834c9422c4ba4b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221020/TensorFlowLiteCMetal.xcframework.zip", checksum: "894bc188dedb40727176b3107df6201cd324307417675943f92bc8c337518ded"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
