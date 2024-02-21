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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240220/TensorFlowLiteC.xcframework.zip", checksum: "250ad11be48854d80dadd010e10dfe6ea11fff22659dfb10391c1e1bc907015c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240220/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3ef4ca7c2f14fab3d855556f9efb695b45bc315a1253b8628ea2206f60c57d85"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240220/TensorFlowLiteCMetal.xcframework.zip", checksum: "bebc7b47ec638e5e170ae76f7e25790244e7e98a6ac3d1ea519aafa4bf625508"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
