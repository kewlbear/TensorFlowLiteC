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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230505/TensorFlowLiteC.xcframework.zip", checksum: "d7f4e1ac26790a09d78edd41226c693500d3f340a6c6032e213b7d077c857e08"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230505/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7d1a73f53c82b3ce16cf040a601632b125fd1def182032a31fb6a4484be174c3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230505/TensorFlowLiteCMetal.xcframework.zip", checksum: "a0e9ddc53274643d4ca241a677f4107f17aec814cdaaf3b14c670ece6348f3e3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
