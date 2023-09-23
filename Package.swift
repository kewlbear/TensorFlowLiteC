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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230922/TensorFlowLiteC.xcframework.zip", checksum: "4918ccddac96f7fd78a4f874fcc93fef648659553b0c01019738aa1131ad031b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230922/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b18e7ff713985530076e3add3748142c1e27ef0776394a57a81b54e888f30efd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230922/TensorFlowLiteCMetal.xcframework.zip", checksum: "108b49970985275423180de5d8320eb371ccbbc278bde9b21964f70c5c4e6c1d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
