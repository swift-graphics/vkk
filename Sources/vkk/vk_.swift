//import vulkan
//import glm
//
//struct vk_ {
//
//    private init() {
//    }
//
//    struct ApplicationInfo {
//
//        var next: UnsafeRawPointer?
//        var applicationName: String?
//        var applicationVersion = 0
//        var engineName: String?
//        var engineVersion = 0
//        var apiVersion = 0
//
//        func native<R>(_ block: (VkApplicationInfo) -> R) -> R {
//            applicationName.withPtr { pApp in
//                engineName.withPtr { pEng in
//                    block(VkApplicationInfo(
//                            sType: StructureType.applicationInfo.value,
//                            pNext: next,
//                            pApplicationName: pApp,
//                            applicationVersion: UInt32(applicationVersion),
//                            pEngineName: pEng,
//                            engineVersion: UInt32(engineVersion),
//                            apiVersion: UInt32(apiVersion)))
//                }
//            }
//        }
//    }
//
//    struct InstanceCreateInfo {
//
//        let type = StructureType.instanceCreateInfo
//        var next: UnsafeRawPointer?
//        var applicationInfo: ApplicationInfo
//        var enabledLayerNames = [String]()
//        var enabledExtensionNames = [String]()
//
//        func native<R>(_ block: (VkInstanceCreateInfo) -> R) -> R {
//            withArrayOfCStrings(enabledLayerNames) { layers in
//                withArrayOfCStrings(enabledExtensionNames) { extensions in
//                    applicationInfo.native { app in
//                        var app = app
//                        return block(VkInstanceCreateInfo(
//                                sType: type.value,
//                                pNext: next,
//                                flags: 0,
//                                pApplicationInfo: &app,
//                                enabledLayerCount: UInt32(enabledLayerNames.count),
//                                ppEnabledLayerNames: layers,
//                                enabledExtensionCount: UInt32(enabledExtensionNames.count),
//                                ppEnabledExtensionNames: extensions))
//                    }
//                }
//            }
//        }
//    }
//
//    struct PhysicalDeviceFeatures {
//
//        var native = VkPhysicalDeviceFeatures()
//
//        // @formatter:off
//        var robustBufferAccess: Bool { get { Bool(native.robustBufferAccess) } set { native.robustBufferAccess = UInt32(newValue) } }
//        var fullDrawIndexUint32: Bool { get { Bool(native.fullDrawIndexUint32) } set { native.fullDrawIndexUint32 = UInt32(newValue) } }
//        var imageCubeArray: Bool { get { Bool(native.imageCubeArray) } set { native.imageCubeArray = UInt32(newValue) } }
//        var independentBlend: Bool { get { Bool(native.independentBlend) } set { native.independentBlend = UInt32(newValue) } }
//        var geometryShader: Bool { get { Bool(native.geometryShader) } set { native.geometryShader = UInt32(newValue) } }
//        var tessellationShader: Bool { get { Bool(native.tessellationShader) } set { native.tessellationShader = UInt32(newValue) } }
//        var sampleRateShading: Bool { get { Bool(native.sampleRateShading) } set { native.sampleRateShading = UInt32(newValue) } }
//        var dualSrcBlend: Bool { get { Bool(native.dualSrcBlend) } set { native.dualSrcBlend = UInt32(newValue) } }
//        var logicOp: Bool { get { Bool(native.logicOp) } set { native.logicOp = UInt32(newValue) } }
//        var multiDrawIndirect: Bool { get { Bool(native.multiDrawIndirect) } set { native.multiDrawIndirect = UInt32(newValue) } }
//        var drawIndirectFirstInstance: Bool { get { Bool(native.drawIndirectFirstInstance) } set { native.drawIndirectFirstInstance = UInt32(newValue) } }
//        var depthClamp: Bool { get { Bool(native.depthClamp) } set { native.depthClamp = UInt32(newValue) } }
//        var depthBiasClamp: Bool { get { Bool(native.depthBiasClamp) } set { native.depthBiasClamp = UInt32(newValue) } }
//        var fillModeNonSolid: Bool { get { Bool(native.fillModeNonSolid) } set { native.fillModeNonSolid = UInt32(newValue) } }
//        var depthBounds: Bool { get { Bool(native.depthBounds) } set { native.depthBounds = UInt32(newValue) } }
//        var wideLines: Bool { get { Bool(native.wideLines) } set { native.wideLines = UInt32(newValue) } }
//        var largePoints: Bool { get { Bool(native.largePoints) } set { native.largePoints = UInt32(newValue) } }
//        var alphaToOne: Bool { get { Bool(native.alphaToOne) } set { native.alphaToOne = UInt32(newValue) } }
//        var multiViewport: Bool { get { Bool(native.multiViewport) } set { native.multiViewport = UInt32(newValue) } }
//        var samplerAnisotropy: Bool { get { Bool(native.samplerAnisotropy) } set { native.samplerAnisotropy = UInt32(newValue) } }
//        var textureCompressionETC2: Bool { get { Bool(native.textureCompressionETC2) } set { native.textureCompressionETC2 = UInt32(newValue) } }
//        var textureCompressionASTC_LDR: Bool { get { Bool(native.textureCompressionASTC_LDR) } set { native.textureCompressionASTC_LDR = UInt32(newValue) } }
//        var textureCompressionBC: Bool { get { Bool(native.textureCompressionBC) } set { native.textureCompressionBC = UInt32(newValue) } }
//        var occlusionQueryPrecise: Bool { get { Bool(native.occlusionQueryPrecise) } set { native.occlusionQueryPrecise = UInt32(newValue) } }
//        var pipelineStatisticsQuery: Bool { get { Bool(native.pipelineStatisticsQuery) } set { native.pipelineStatisticsQuery = UInt32(newValue) } }
//        var vertexPipelineStoresAndAtomics: Bool { get { Bool(native.vertexPipelineStoresAndAtomics) } set { native.vertexPipelineStoresAndAtomics = UInt32(newValue) } }
//        var fragmentStoresAndAtomics: Bool { get { Bool(native.fragmentStoresAndAtomics) } set { native.fragmentStoresAndAtomics = UInt32(newValue) } }
//        var shaderTessellationAndGeometryPointSize: Bool { get { Bool(native.shaderTessellationAndGeometryPointSize) } set { native.shaderTessellationAndGeometryPointSize = UInt32(newValue) } }
//        var shaderImageGatherExtended: Bool { get { Bool(native.shaderImageGatherExtended) } set { native.shaderImageGatherExtended = UInt32(newValue) } }
//        var shaderStorageImageExtendedFormats: Bool { get { Bool(native.shaderStorageImageExtendedFormats) } set { native.shaderStorageImageExtendedFormats = UInt32(newValue) } }
//        var shaderStorageImageMultisample: Bool { get { Bool(native.shaderStorageImageMultisample) } set { native.shaderStorageImageMultisample = UInt32(newValue) } }
//        var shaderStorageImageReadWithoutFormat: Bool { get { Bool(native.shaderStorageImageReadWithoutFormat) } set { native.shaderStorageImageReadWithoutFormat = UInt32(newValue) } }
//        var shaderStorageImageWriteWithoutFormat: Bool { get { Bool(native.shaderStorageImageWriteWithoutFormat) } set { native.shaderStorageImageWriteWithoutFormat = UInt32(newValue) } }
//        var shaderUniformBufferArrayDynamicIndexing: Bool { get { Bool(native.shaderUniformBufferArrayDynamicIndexing) } set { native.shaderUniformBufferArrayDynamicIndexing = UInt32(newValue) } }
//        var shaderSampledImageArrayDynamicIndexing: Bool { get { Bool(native.shaderSampledImageArrayDynamicIndexing) } set { native.shaderSampledImageArrayDynamicIndexing = UInt32(newValue) } }
//        var shaderStorageBufferArrayDynamicIndexing: Bool { get { Bool(native.shaderStorageBufferArrayDynamicIndexing) } set { native.shaderStorageBufferArrayDynamicIndexing = UInt32(newValue) } }
//        var shaderStorageImageArrayDynamicIndexing: Bool { get { Bool(native.shaderStorageImageArrayDynamicIndexing) } set { native.shaderStorageImageArrayDynamicIndexing = UInt32(newValue) } }
//        var shaderClipDistance: Bool { get { Bool(native.shaderClipDistance) } set { native.shaderClipDistance = UInt32(newValue) } }
//        var shaderCullDistance: Bool { get { Bool(native.shaderCullDistance) } set { native.shaderCullDistance = UInt32(newValue) } }
//        var shaderFloat64: Bool { get { Bool(native.shaderFloat64) } set { native.shaderFloat64 = UInt32(newValue) } }
//        var shaderInt64: Bool { get { Bool(native.shaderInt64) } set { native.shaderInt64 = UInt32(newValue) } }
//        var shaderInt16: Bool { get { Bool(native.shaderInt16) } set { native.shaderInt16 = UInt32(newValue) } }
//        var shaderResourceResidency: Bool { get { Bool(native.shaderResourceResidency) } set { native.shaderResourceResidency = UInt32(newValue) } }
//        var shaderResourceMinLod: Bool { get { Bool(native.shaderResourceMinLod) } set { native.shaderResourceMinLod = UInt32(newValue) } }
//        var sparseBinding: Bool { get { Bool(native.sparseBinding) } set { native.sparseBinding = UInt32(newValue) } }
//        var sparseResidencyBuffer: Bool { get { Bool(native.sparseResidencyBuffer) } set { native.sparseResidencyBuffer = UInt32(newValue) } }
//        var sparseResidencyImage2D: Bool { get { Bool(native.sparseResidencyImage2D) } set { native.sparseResidencyImage2D = UInt32(newValue) } }
//        var sparseResidencyImage3D: Bool { get { Bool(native.sparseResidencyImage3D) } set { native.sparseResidencyImage3D = UInt32(newValue) } }
//        var sparseResidency2Samples: Bool { get { Bool(native.sparseResidency2Samples) } set { native.sparseResidency2Samples = UInt32(newValue) } }
//        var sparseResidency4Samples: Bool { get { Bool(native.sparseResidency4Samples) } set { native.sparseResidency4Samples = UInt32(newValue) } }
//        var sparseResidency8Samples: Bool { get { Bool(native.sparseResidency8Samples) } set { native.sparseResidency8Samples = UInt32(newValue) } }
//        var sparseResidency16Samples: Bool { get { Bool(native.sparseResidency16Samples) } set { native.sparseResidency16Samples = UInt32(newValue) } }
//        var sparseResidencyAliased: Bool { get { Bool(native.sparseResidencyAliased) } set { native.sparseResidencyAliased = UInt32(newValue) } }
//        var variableMultisampleRate: Bool { get { Bool(native.variableMultisampleRate) } set { native.variableMultisampleRate = UInt32(newValue) } }
//        var inheritedQueries: Bool { get { Bool(native.inheritedQueries) } set { native.inheritedQueries = UInt32(newValue) } }
//        // @formatter:on
//    }
//
//    typealias FormatProperties = VkFormatProperties
//
//    typealias Extent3D = VkExtent3D
//
//    struct ImageFormatProperties {
//
//        var native = VkImageFormatProperties()
//
//        // @formatter:off
//        var maxExtent: VkExtent3D { get { native.maxExtent } set { native.maxExtent = newValue } }
//        var maxMipLevels: Int { get { Int(native.maxMipLevels) } set { native.maxMipLevels = UInt32(newValue) } }
//        var maxArrayLayers: Int { get { Int(native.maxArrayLayers) } set { native.maxArrayLayers = UInt32(newValue) } }
//        var sampleCounts: VkSampleCountFlags { get { native.sampleCounts } set { native.sampleCounts = newValue } }
//        var maxResourceSize: VkDeviceSize { get { native.maxResourceSize } set { native.maxResourceSize = newValue } }
//        // @formatter:on
//    }
//
//    struct PhysicalDeviceLimits {
//
//        var native = VkPhysicalDeviceLimits()
//
//        // @formatter:off
//        var maxImageDimension1D: Int { get { Int(native.maxImageDimension1D) } set { native.maxImageDimension1D = UInt32(newValue) } }
//        var maxImageDimension2D: Int { get { Int(native.maxImageDimension2D) } set { native.maxImageDimension2D = UInt32(newValue) } }
//        var maxImageDimension3D: Int { get { Int(native.maxImageDimension3D) } set { native.maxImageDimension3D = UInt32(newValue) } }
//        var maxImageDimensionCube: Int { get { Int(native.maxImageDimensionCube) } set { native.maxImageDimensionCube = UInt32(newValue) } }
//        var maxImageArrayLayers: Int { get { Int(native.maxImageArrayLayers) } set { native.maxImageArrayLayers = UInt32(newValue) } }
//        var maxTexelBufferElements: Int { get { Int(native.maxTexelBufferElements) } set { native.maxTexelBufferElements = UInt32(newValue) } }
//        var maxUniformBufferRange: Int { get { Int(native.maxUniformBufferRange) } set { native.maxUniformBufferRange = UInt32(newValue) } }
//        var maxStorageBufferRange: Int { get { Int(native.maxStorageBufferRange) } set { native.maxStorageBufferRange = UInt32(newValue) } }
//        var maxPushConstantsSize: Int { get { Int(native.maxPushConstantsSize) } set { native.maxPushConstantsSize = UInt32(newValue) } }
//        var maxMemoryAllocationCount: Int { get { Int(native.maxMemoryAllocationCount) } set { native.maxMemoryAllocationCount = UInt32(newValue) } }
//        var maxSamplerAllocationCount: Int { get { Int(native.maxSamplerAllocationCount) } set { native.maxSamplerAllocationCount = UInt32(newValue) } }
//        var bufferImageGranularity: VkDeviceSize { get { native.bufferImageGranularity } set { native.bufferImageGranularity = newValue } }
//        var sparseAddressSpaceSize: VkDeviceSize { get { native.sparseAddressSpaceSize } set { native.sparseAddressSpaceSize = newValue } }
//        var maxBoundDescriptorSets: Int { get { Int(native.maxBoundDescriptorSets) } set { native.maxBoundDescriptorSets = UInt32(newValue) } }
//        var maxPerStageDescriptorSamplers: Int { get { Int(native.maxPerStageDescriptorSamplers) } set { native.maxPerStageDescriptorSamplers = UInt32(newValue) } }
//        var maxPerStageDescriptorUniformBuffers: Int { get { Int(native.maxPerStageDescriptorUniformBuffers) } set { native.maxPerStageDescriptorUniformBuffers = UInt32(newValue) } }
//        var maxPerStageDescriptorStorageBuffers: Int { get { Int(native.maxPerStageDescriptorStorageBuffers) } set { native.maxPerStageDescriptorStorageBuffers = UInt32(newValue) } }
//        var maxPerStageDescriptorSampledImages: Int { get { Int(native.maxPerStageDescriptorSampledImages) } set { native.maxPerStageDescriptorSampledImages = UInt32(newValue) } }
//        var maxPerStageDescriptorStorageImages: Int { get { Int(native.maxPerStageDescriptorStorageImages) } set { native.maxPerStageDescriptorStorageImages = UInt32(newValue) } }
//        var maxPerStageDescriptorInputAttachments: Int { get { Int(native.maxPerStageDescriptorInputAttachments) } set { native.maxPerStageDescriptorInputAttachments = UInt32(newValue) } }
//        var maxPerStageResources: Int { get { Int(native.maxPerStageResources) } set { native.maxPerStageResources = UInt32(newValue) } }
//        var maxDescriptorSetSamplers: Int { get { Int(native.maxDescriptorSetSamplers) } set { native.maxDescriptorSetSamplers = UInt32(newValue) } }
//        var maxDescriptorSetUniformBuffers: Int { get { Int(native.maxDescriptorSetUniformBuffers) } set { native.maxDescriptorSetUniformBuffers = UInt32(newValue) } }
//        var maxDescriptorSetUniformBuffersDynamic: Int { get { Int(native.maxDescriptorSetUniformBuffersDynamic) } set { native.maxDescriptorSetUniformBuffersDynamic = UInt32(newValue) } }
//        var maxDescriptorSetStorageBuffers: Int { get { Int(native.maxDescriptorSetStorageBuffers) } set { native.maxDescriptorSetStorageBuffers = UInt32(newValue) } }
//        var maxDescriptorSetStorageBuffersDynamic: Int { get { Int(native.maxDescriptorSetStorageBuffersDynamic) } set { native.maxDescriptorSetStorageBuffersDynamic = UInt32(newValue) } }
//        var maxDescriptorSetSampledImages: Int { get { Int(native.maxDescriptorSetSampledImages) } set { native.maxDescriptorSetSampledImages = UInt32(newValue) } }
//        var maxDescriptorSetStorageImages: Int { get { Int(native.maxDescriptorSetStorageImages) } set { native.maxDescriptorSetStorageImages = UInt32(newValue) } }
//        var maxDescriptorSetInputAttachments: Int { get { Int(native.maxDescriptorSetInputAttachments) } set { native.maxDescriptorSetInputAttachments = UInt32(newValue) } }
//        var maxVertexInputAttributes: Int { get { Int(native.maxVertexInputAttributes) } set { native.maxVertexInputAttributes = UInt32(newValue) } }
//        var maxVertexInputBindings: Int { get { Int(native.maxVertexInputBindings) } set { native.maxVertexInputBindings = UInt32(newValue) } }
//        var maxVertexInputAttributeOffset: Int { get { Int(native.maxVertexInputAttributeOffset) } set { native.maxVertexInputAttributeOffset = UInt32(newValue) } }
//        var maxVertexInputBindingStride: Int { get { Int(native.maxVertexInputBindingStride) } set { native.maxVertexInputBindingStride = UInt32(newValue) } }
//        var maxVertexOutputComponents: Int { get { Int(native.maxVertexOutputComponents) } set { native.maxVertexOutputComponents = UInt32(newValue) } }
//        var maxTessellationGenerationLevel: Int { get { Int(native.maxTessellationGenerationLevel) } set { native.maxTessellationGenerationLevel = UInt32(newValue) } }
//        var maxTessellationPatchSize: Int { get { Int(native.maxTessellationPatchSize) } set { native.maxTessellationPatchSize = UInt32(newValue) } }
//        var maxTessellationControlPerVertexInputComponents: Int { get { Int(native.maxTessellationControlPerVertexInputComponents) } set { native.maxTessellationControlPerVertexInputComponents = UInt32(newValue) } }
//        var maxTessellationControlPerVertexOutputComponents: Int { get { Int(native.maxTessellationControlPerVertexOutputComponents) } set { native.maxTessellationControlPerVertexOutputComponents = UInt32(newValue) } }
//        var maxTessellationControlPerPatchOutputComponents: Int { get { Int(native.maxTessellationControlPerPatchOutputComponents) } set { native.maxTessellationControlPerPatchOutputComponents = UInt32(newValue) } }
//        var maxTessellationControlTotalOutputComponents: Int { get { Int(native.maxTessellationControlTotalOutputComponents) } set { native.maxTessellationControlTotalOutputComponents = UInt32(newValue) } }
//        var maxTessellationEvaluationInputComponents: Int { get { Int(native.maxTessellationEvaluationInputComponents) } set { native.maxTessellationEvaluationInputComponents = UInt32(newValue) } }
//        var maxTessellationEvaluationOutputComponents: Int { get { Int(native.maxTessellationEvaluationOutputComponents) } set { native.maxTessellationEvaluationOutputComponents = UInt32(newValue) } }
//        var maxGeometryShaderInvocations: Int { get { Int(native.maxGeometryShaderInvocations) } set { native.maxGeometryShaderInvocations = UInt32(newValue) } }
//        var maxGeometryInputComponents: Int { get { Int(native.maxGeometryInputComponents) } set { native.maxGeometryInputComponents = UInt32(newValue) } }
//        var maxGeometryOutputComponents: Int { get { Int(native.maxGeometryOutputComponents) } set { native.maxGeometryOutputComponents = UInt32(newValue) } }
//        var maxGeometryOutputVertices: Int { get { Int(native.maxGeometryOutputVertices) } set { native.maxGeometryOutputVertices = UInt32(newValue) } }
//        var maxGeometryTotalOutputComponents: Int { get { Int(native.maxGeometryTotalOutputComponents) } set { native.maxGeometryTotalOutputComponents = UInt32(newValue) } }
//        var maxFragmentInputComponents: Int { get { Int(native.maxFragmentInputComponents) } set { native.maxFragmentInputComponents = UInt32(newValue) } }
//        var maxFragmentOutputAttachments: Int { get { Int(native.maxFragmentOutputAttachments) } set { native.maxFragmentOutputAttachments = UInt32(newValue) } }
//        var maxFragmentDualSrcAttachments: Int { get { Int(native.maxFragmentDualSrcAttachments) } set { native.maxFragmentDualSrcAttachments = UInt32(newValue) } }
//        var maxFragmentCombinedOutputResources: Int { get { Int(native.maxFragmentCombinedOutputResources) } set { native.maxFragmentCombinedOutputResources = UInt32(newValue) } }
//        var maxComputeSharedMemorySize: Int { get { Int(native.maxComputeSharedMemorySize) } set { native.maxComputeSharedMemorySize = UInt32(newValue) } }
//        var maxComputeWorkGroupCount: uvec3 { get { uvec3(native.maxComputeWorkGroupCount) } set { native.maxComputeWorkGroupCount = newValue.asTuple } }
//        var maxComputeWorkGroupInvocations: Int { get { Int(native.maxComputeWorkGroupInvocations) } set { native.maxComputeWorkGroupInvocations = UInt32(newValue) } }
//        var maxComputeWorkGroupSize: uvec3 { get { uvec3(native.maxComputeWorkGroupSize) } set { native.maxComputeWorkGroupSize = newValue.asTuple } }
//        var subPixelPrecisionBits: Int { get { Int(native.subPixelPrecisionBits) } set { native.subPixelPrecisionBits = UInt32(newValue) } }
//        var subTexelPrecisionBits: Int { get { Int(native.subTexelPrecisionBits) } set { native.subTexelPrecisionBits = UInt32(newValue) } }
//        var mipmapPrecisionBits: Int { get { Int(native.mipmapPrecisionBits) } set { native.mipmapPrecisionBits = UInt32(newValue) } }
//        var maxDrawIndexedIndexValue: Int { get { Int(native.maxDrawIndexedIndexValue) } set { native.maxDrawIndexedIndexValue = UInt32(newValue) } }
//        var maxDrawIndirectCount: Int { get { Int(native.maxDrawIndirectCount) } set { native.maxDrawIndirectCount = UInt32(newValue) } }
//        var maxSamplerLodBias: Float { get { native.maxSamplerLodBias } set { native.maxSamplerLodBias = newValue } }
//        var maxSamplerAnisotropy: Float { get { native.maxSamplerAnisotropy } set { native.maxSamplerAnisotropy = newValue } }
//        var maxViewports: Int { get { Int(native.maxViewports) } set { native.maxViewports = UInt32(newValue) } }
//        var maxViewportDimensions: uvec2 { get { uvec2(native.maxViewportDimensions) } set { native.maxViewportDimensions = newValue.asTuple } }
//        var viewportBoundsRange: vec2 { get { vec2(native.viewportBoundsRange) } set { native.viewportBoundsRange = newValue.asTuple } }
//        var viewportSubPixelBits: Int { get { Int(native.viewportSubPixelBits) } set { native.viewportSubPixelBits = UInt32(newValue) } }
//        var minMemoryMapAlignment: Int { get { native.minMemoryMapAlignment } set { native.minMemoryMapAlignment = newValue } } // TODO check
//        var minTexelBufferOffsetAlignment: VkDeviceSize { get { native.minTexelBufferOffsetAlignment } set { native.minTexelBufferOffsetAlignment = newValue } }
//        var minUniformBufferOffsetAlignment: VkDeviceSize { get { native.minUniformBufferOffsetAlignment } set { native.minUniformBufferOffsetAlignment = newValue } }
//        var minStorageBufferOffsetAlignment: VkDeviceSize { get { native.minStorageBufferOffsetAlignment } set { native.minStorageBufferOffsetAlignment = newValue } }
//        var minTexelOffset: Int { get { Int(native.minTexelOffset) } set { native.minTexelOffset = Int32(newValue) } }
//        var maxTexelOffset: Int { get { Int(native.maxTexelOffset) } set { native.maxTexelOffset = UInt32(newValue) } }
//        var minTexelGatherOffset: Int { get { Int(native.minTexelGatherOffset) } set { native.minTexelGatherOffset = Int32(newValue) } }
//        var maxTexelGatherOffset: Int { get { Int(native.maxTexelGatherOffset) } set { native.maxTexelGatherOffset = UInt32(newValue) } }
//        var minInterpolationOffset: Float { get { native.minInterpolationOffset } set { native.minInterpolationOffset = newValue } }
//        var maxInterpolationOffset: Float { get { native.maxInterpolationOffset } set { native.maxInterpolationOffset = newValue } }
//        var subPixelInterpolationOffsetBits: Int { get { Int(native.subPixelInterpolationOffsetBits) } set { native.subPixelInterpolationOffsetBits = UInt32(newValue) } }
//        var maxFramebufferWidth: Int { get { Int(native.maxFramebufferWidth) } set { native.maxFramebufferWidth = UInt32(newValue) } }
//        var maxFramebufferHeight: Int { get { Int(native.maxFramebufferHeight) } set { native.maxFramebufferHeight = UInt32(newValue) } }
//        var maxFramebufferLayers: Int { get { Int(native.maxFramebufferLayers) } set { native.maxFramebufferLayers = UInt32(newValue) } }
//        var framebufferColorSampleCounts: SampleCount { get { SampleCount(rawValue: native.framebufferColorSampleCounts) } set { native.framebufferColorSampleCounts = newValue.rawValue } }
//        var framebufferDepthSampleCounts: SampleCount { get { SampleCount(rawValue: native.framebufferDepthSampleCounts) } set { native.framebufferDepthSampleCounts = newValue.rawValue } }
//        var framebufferStencilSampleCounts: SampleCount { get { SampleCount(rawValue: native.framebufferStencilSampleCounts) } set { native.framebufferStencilSampleCounts = newValue.rawValue } }
//        var framebufferNoAttachmentsSampleCounts: SampleCount { get { SampleCount(rawValue: native.framebufferNoAttachmentsSampleCounts) } set { native.framebufferNoAttachmentsSampleCounts = newValue.rawValue } }
//        var maxColorAttachments: Int { get { Int(native.maxColorAttachments) } set { native.maxColorAttachments = UInt32(newValue) } }
//        var sampledImageColorSampleCounts: SampleCount { get { SampleCount(rawValue: native.sampledImageColorSampleCounts) } set { native.sampledImageColorSampleCounts = newValue.rawValue } }
//        var sampledImageIntegerSampleCounts: SampleCount { get { SampleCount(rawValue: native.sampledImageIntegerSampleCounts) } set { native.sampledImageIntegerSampleCounts = newValue.rawValue } }
//        var sampledImageDepthSampleCounts: SampleCount { get { SampleCount(rawValue: native.sampledImageDepthSampleCounts) } set { native.sampledImageDepthSampleCounts = newValue.rawValue } }
//        var sampledImageStencilSampleCounts: SampleCount { get { SampleCount(rawValue: native.sampledImageStencilSampleCounts) } set { native.sampledImageStencilSampleCounts = newValue.rawValue } }
//        var storageImageSampleCounts: SampleCount { get { SampleCount(rawValue: native.storageImageSampleCounts) } set { native.storageImageSampleCounts = newValue.rawValue } }
//        var maxSampleMaskWords: Int { get { Int(native.maxSampleMaskWords) } set { native.maxSampleMaskWords = UInt32(newValue) } }
//        var timestampComputeAndGraphics: Bool { get { Bool(native.timestampComputeAndGraphics) } set { native.timestampComputeAndGraphics = UInt32(newValue) } }
//        var timestampPeriod: Float { get { native.timestampPeriod } set { native.timestampPeriod = newValue } }
//        var maxClipDistances: Int { get { Int(native.maxClipDistances) } set { native.maxClipDistances = UInt32(newValue) } }
//        var maxCullDistances: Int { get { Int(native.maxCullDistances) } set { native.maxCullDistances = UInt32(newValue) } }
//        var maxCombinedClipAndCullDistances: Int { get { Int(native.maxCombinedClipAndCullDistances) } set { native.maxCombinedClipAndCullDistances = UInt32(newValue) } }
//        var discreteQueuePriorities: Int { get { Int(native.discreteQueuePriorities) } set { native.discreteQueuePriorities = UInt32(newValue) } }
//        var pointSizeRange: vec2 { get { vec2(native.pointSizeRange) } set { native.pointSizeRange = newValue.asTuple } }
//        var lineWidthRange: vec2 { get { vec2(native.lineWidthRange) } set { native.lineWidthRange = newValue.asTuple } }
//        var pointSizeGranularity: Float { get { native.pointSizeGranularity } set { native.pointSizeGranularity = newValue } }
//        var lineWidthGranularity: Float { get { native.lineWidthGranularity } set { native.lineWidthGranularity = newValue } }
//        var strictLines: Bool { get { Bool(native.strictLines) } set { native.strictLines = UInt32(newValue) } }
//        var standardSampleLocations: Bool { get { Bool(native.standardSampleLocations) } set { native.standardSampleLocations = UInt32(newValue) } }
//        var optimalBufferCopyOffsetAlignment: VkDeviceSize { get { native.optimalBufferCopyOffsetAlignment } set { native.optimalBufferCopyOffsetAlignment = newValue } }
//        var optimalBufferCopyRowPitchAlignment: VkDeviceSize { get { native.optimalBufferCopyRowPitchAlignment } set { native.optimalBufferCopyRowPitchAlignment = newValue } }
//        var nonCoherentAtomSize: VkDeviceSize { get { native.nonCoherentAtomSize } set { native.nonCoherentAtomSize = newValue } }
//        // @formatter:on
//    }
//
//    struct PhysicalDeviceSparseProperties {
//
//        var native = VkPhysicalDeviceSparseProperties()
//
//        // @formatter:off
//        var residencyStandard2DBlockShape: Bool { get { Bool(native.residencyStandard2DBlockShape) } set { native.residencyStandard2DBlockShape = UInt32(newValue) } }
//        var residencyStandard2DMultisampleBlockShape: Bool { get { Bool(native.residencyStandard2DMultisampleBlockShape) } set { native.residencyStandard2DMultisampleBlockShape = UInt32(newValue) } }
//        var residencyStandard3DBlockShape: Bool { get { Bool(native.residencyStandard3DBlockShape) } set { native.residencyStandard3DBlockShape = UInt32(newValue) } }
//        var residencyAlignedMipSize: Bool { get { Bool(native.residencyAlignedMipSize) } set { native.residencyAlignedMipSize = UInt32(newValue) } }
//        var residencyNonResidentStrict: Bool { get { Bool(native.residencyNonResidentStrict) } set { native.residencyNonResidentStrict = UInt32(newValue) } }
//        // @formatter:on
//    }
//
//    typealias Tuple256_Int8 = (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
//
//    struct PhysicalDeviceProperties {
//
//        typealias Tuple16_UInt8 = (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
//
//        var apiVersion = 0
//        var driverVersion = 0
//        var vendorID = 0
//        var deviceID = 0
//        var deviceType = PhysicalDeviceType.other
//        var deviceName = "" // [VK_MAX_PHYSICAL_DEVICE_NAME_SIZE] ~256
//        var pipelineCacheUUID: Tuple16_UInt8 = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) //[VK_UUID_SIZE] ~16
//        var limits = VkPhysicalDeviceLimits()
//        var sparseProperties = VkPhysicalDeviceSparseProperties()
//
//        func native<R>(_ block: (VkPhysicalDeviceProperties) -> R) -> R {
//            var name: Tuple256_Int8 = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
//            withUnsafeMutableBytes(of: &name) { ptr in
//                ptr.copyBytes(from: deviceName.utf8.prefix(ptr.count))
//            }
//            return block(VkPhysicalDeviceProperties(
//                    apiVersion: UInt32(apiVersion),
//                    driverVersion: UInt32(driverVersion),
//                    vendorID: UInt32(vendorID),
//                    deviceID: UInt32(deviceID),
//                    deviceType: deviceType.value,
//                    deviceName: name,
//                    pipelineCacheUUID: pipelineCacheUUID,
//                    limits: limits,
//                    sparseProperties: sparseProperties))
//        }
//    }
//
//    struct QueueFamilyProperties {
//
//        var native = VkQueueFamilyProperties()
//
//        // @formatter:off
//        var queueFlags: QueueFlags { get { QueueFlags(rawValue: native.queueFlags) } set { native.queueFlags = newValue.rawValue } }
//        var queueCount: Int { get { Int(native.queueCount) } set { native.queueCount = UInt32(newValue) } }
//        var timestampValidBits: Int { get { Int(native.timestampValidBits) } set { native.timestampValidBits = UInt32(newValue) } }
//        var minImageTransferGranularity: VkExtent3D { get { native.minImageTransferGranularity } set { native.minImageTransferGranularity = newValue } }
//        // @formatter:on
//    }
//
//    struct MemoryType {
//
//        var native = VkMemoryType()
//
//        // @formatter:off
//        var propertyFlags: VkMemoryPropertyFlags { get { native.propertyFlags } set { native.propertyFlags = newValue } }
//        var heapIndex: Int { get { Int(native.heapIndex) } set { native.heapIndex = UInt32(newValue) } }
//        // @formatter:on
//    }
//
//    struct MemoryHeap {
//
//        var native = VkMemoryHeap()
//
//        // @formatter:off
//        var size: VkDeviceSize { get { native.size } set { native.size = newValue } }
//        var flags: MemoryHeapFlags { get { MemoryHeapFlags(rawValue: native.flags) } set { native.flags = newValue.rawValue } }
//        // @formatter:on
//    }
//
//    struct PhysicalDeviceMemoryProperties {
//
//        var native = VkPhysicalDeviceMemoryProperties()
//
//        typealias tuple32_VkMemoryType = (VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType, VkMemoryType)
//        typealias tuple16_VkMemoryHeap = (VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap, VkMemoryHeap)
//
//        // @formatter:off
//        var memoryTypeCount: Int { get { Int(native.memoryTypeCount) } set { native.memoryTypeCount = UInt32(newValue) } }
//        var memoryTypes: tuple32_VkMemoryType { get { native.memoryTypes } set { native.memoryTypes = newValue } }
//        var memoryHeapCount: Int { get { Int(native.memoryHeapCount) } set { native.memoryHeapCount = UInt32(newValue) } }
//        var memoryHeaps: tuple16_VkMemoryHeap { get { native.memoryHeaps } set { native.memoryHeaps = newValue } }
//        // @formatter:on
//    }
//
//    struct DeviceQueueCreateInfo {
//
//        var native = VkDeviceQueueCreateInfo()
//
//        init() {
//            native.sType = type.value
//        }
//
//        // @formatter:off
//        let type = StructureType.deviceQueueCreateInfo
//        var next: UnsafeRawPointer? { get { native.pNext } set { native.pNext = newValue } }
//        var flags: DeviceQueueCreate { get { DeviceQueueCreate(rawValue: native.flags) } set { native.flags = newValue.rawValue } }
//        var queueFamilyIndex: Int { get { Int(native.queueFamilyIndex) } set { native.queueFamilyIndex = UInt32(newValue) } }
//        var _queueCount: Int { get { Int(native.queueCount) } set { native.queueCount = UInt32(newValue) } }
//        var queuePriorities: [Float] { get { Array(UnsafeBufferPointer(start: native.pQueuePriorities, count: _queueCount)) } set { native.pQueuePriorities = UnsafePointer(newValue); _queueCount = newValue.count } }
//        // @formatter:on
//    }
//
//    struct DeviceCreateInfo {
//
//        let type = StructureType.deviceCreateInfo
//        var next: UnsafeRawPointer?
//        var flags = DeviceCreateFlags(0)
////        var queueCreateInfoCount = 0
//        var queueCreateInfos = [VkDeviceQueueCreateInfo]()
////    uint32_t                           enabledLayerCount;
//        var enabledLayerNames = [String]()
////    uint32_t                           enabledExtensionCount;
//        var enabledExtensionNames = [String]()
//        var enabledFeatures: VkPhysicalDeviceFeatures?
//
//        func native<R>(_ block: (VkDeviceCreateInfo) -> R) -> R {
//            withArrayOfCStrings(enabledLayerNames) { layers in
//                withArrayOfCStrings(enabledExtensionNames) { extensions in
//                    var pFeatures: UnsafePointer<VkPhysicalDeviceFeatures>?
//                    if var features = enabledFeatures {
//                        pFeatures = UnsafePointer(&features)
//                    }
//                    return block(VkDeviceCreateInfo(
//                            sType: type.value,
//                            pNext: next,
//                            flags: flags,
//                            queueCreateInfoCount: UInt32(queueCreateInfos.count),
//                            pQueueCreateInfos: queueCreateInfos,
//                            enabledLayerCount: UInt32(enabledLayerNames.count),
//                            ppEnabledLayerNames: layers,
//                            enabledExtensionCount: UInt32(enabledExtensionNames.count),
//                            ppEnabledExtensionNames: extensions,
//                            pEnabledFeatures: pFeatures))
//                }
//            }
//        }
//    }
//
//    struct ExtensionProperties {
//
//        var native = VkExtensionProperties()
//
//        // [VK_MAX_EXTENSION_NAME_SIZE] ~256
//        var extensionName: String {
//            get {
//                var name = native.extensionName
//                return String(cString: &name.0)
//            }
//            set {
//                var name: Tuple256_Int8 = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
//                withUnsafeMutableBytes(of: &name) { ptr in
//                    ptr.copyBytes(from: newValue.utf8.prefix(ptr.count))
//                }
//            }
//        }
//        // @formatter:off
//        var specVersion: Int { get { Int(native.specVersion) } set { native.specVersion = UInt32(newValue) } }
//        // @formatter:on
//    }
//}
//
//
//var instance: VkInstance?