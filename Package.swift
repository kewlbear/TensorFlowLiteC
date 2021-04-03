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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210402/TensorFlowLiteC.xcframework.zip", checksum: "1c0dbfb51d327d8144659519917574088418697bdba4cafcf289bd13925681ed"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210402/TensorFlowLiteCCoreML.xcframework.zip", checksum: "66decec22c5e80146efdc310a3f3a0608b6ea9c9997c57524abad4c31f4f66cf"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210402/TensorFlowLiteCMetal.xcframework.zip", checksum: "7719f70b08d4d8db386d7ce58088a57a5cea66ba29a87f6666bccc4ba5d997b2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
