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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210514/TensorFlowLiteC.xcframework.zip", checksum: "cc588e84cae6c599fde93afdffa00dbd568d1fa74486223aff1d67ee7887010a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210514/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ac5087193cbd237aabadfb86ecc392140fbad4c83dec3bd3a5d2ae3c2309277a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210514/TensorFlowLiteCMetal.xcframework.zip", checksum: "bddf4e7d950984494158ac274919ef10ca9eda999b1fec6b9d68b7c391ecf276"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
