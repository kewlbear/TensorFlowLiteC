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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240620/TensorFlowLiteC.xcframework.zip", checksum: "d2091649de0264ce9b289e6a4eabcf11ce561de40403a2438543969fe91dd556"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240620/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f51fd523e90d653dc8d31c2fab3db21fe4103da0e00068ce11a73ad9b4d856bb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240620/TensorFlowLiteCMetal.xcframework.zip", checksum: "04ba03cdef61d08a94686372b023c757d0db8df4fe6e596e91f01a7135f3df47"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
