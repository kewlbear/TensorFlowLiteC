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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240127/TensorFlowLiteC.xcframework.zip", checksum: "826ba5cc3d15d911c18ee990e69bb6cbfeb270fea36201c40e2261c9ce3f1a99"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240127/TensorFlowLiteCCoreML.xcframework.zip", checksum: "28197294e690417eda67f329881da7008a5ebef838fe9078b50cb51e3311a774"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240127/TensorFlowLiteCMetal.xcframework.zip", checksum: "b3da86459e3cf36f723b53665527f364aa85f3d621e8decbc0eb387883230975"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
