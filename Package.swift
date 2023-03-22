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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230321/TensorFlowLiteC.xcframework.zip", checksum: "0e807db22f2ef80853468b5286927a36b40e254651d92bc5fd465f12ae2f741b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230321/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2a645a84048d1ea55377a7a60ef4073166ce8c73e91210b687d8a045559856da"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230321/TensorFlowLiteCMetal.xcframework.zip", checksum: "64314dce384d0964e70791566521a2a3615cd2e5751ba081e9b17eac5c4906cb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
