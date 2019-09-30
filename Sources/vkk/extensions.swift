//
// Created by elect on 30/09/19.
//

import Foundation
import vulkan
import glm

extension VkApplicationInfo {

    init(next: UnsafeRawPointer? = nil,
         applicationName: String? = nil,
         applicationVersion: UInt32 = 0,
         engineName: String? = nil,
         engineVersion: UInt32 = 0,
         apiVersion: UInt32 = 0) {

        self.init(
                sType: VK_STRUCTURE_TYPE_APPLICATION_INFO,
                pNext: nil,
                pApplicationName: applicationName?.ptr,
                applicationVersion: applicationVersion,
                pEngineName: engineName?.ptr,
                engineVersion: engineVersion,
                apiVersion: apiVersion)
    }

    mutating func type(_ v: StructureType) -> VkApplicationInfo {
        sType = VkStructureType(v.rawValue)
        return self
    }

    func type() -> StructureType {
        StructureType(rawValue: sType.rawValue)!
    }

    func next(_ v: UnsafeRawPointer?) -> VkApplicationInfo {
        var s = self
        s.pNext = v
        return s
    }

    func next() -> UnsafeRawPointer? {
        pNext
    }

    func applicationName(_ v: String?) -> VkApplicationInfo {
        var s = self
        s.pApplicationName = UnsafePointer<Int8>(v)
        return s
    }

    func applicationName() -> String? {
        String(cString: pApplicationName)
    }

    func applicationVersion(_ v: UInt32) -> VkApplicationInfo {
        var s = self
        s.applicationVersion = v
        return s
    }

    func applicationVersion() -> UInt32 {
        applicationVersion
    }

    func engineName(_ v: UnsafePointer<Int8>) -> VkApplicationInfo {
        var s = self
        s.pEngineName = UnsafePointer<Int8>(v)
        return s
    }

    func engineName() -> String? {
        String(cString: pEngineName)
    }

    func engineVersion(_ v: UInt32) -> VkApplicationInfo {
        var s = self
        s.engineVersion = v
        return s
    }

    func engineVersion() -> UInt32 {
        engineVersion
    }

    func apiVersion(_ v: UInt32) -> VkApplicationInfo {
        var s = self
        s.apiVersion = v
        return s
    }

    func apiVersion() -> UInt32 {
        apiVersion
    }
}

extension VkInstanceCreateInfo {

//    init(next: UnsafeRawPointer? = nil,
//         flags: InstanceCreateFlags = 0,
//         applicationInfo: VkApplicationInfo,
//         enabledLayerNames: [String],
//         enabledExtensionNames: [String]) {
//
//        withArrayOfCStrings(enabledLayerNames) { layers in
//            withArrayOfCStrings(enabledExtensionNames) { extensions in
//                var app = applicationInfo
//                self.init(
//                        sType: VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
//                        pNext: next,
//                        flags: flags,
//                        pApplicationInfo: &app,
//                        enabledLayerCount: UInt32(enabledLayerNames.count),
//                        ppEnabledLayerNames: layers,
//                        enabledExtensionCount: UInt32(enabledExtensionNames.count),
//                        ppEnabledExtensionNames: extensions)
//            }
//        }
//    }

//    func type(_ v: StructureType) -> VkInstanceCreateInfo {
//        var s = self
//        s.sType = VkStructureType(v.rawValue)
//        return s
//    }
//
//    func type() -> StructureType {
//        StructureType(rawValue: sType.rawValue)!
//    }
//
//    func next(_ v: UnsafeRawPointer?) -> VkInstanceCreateInfo {
//        var s = self
//        s.pNext = v
//        return s
//    }
//
//    func next() -> UnsafeRawPointer? {
//        pNext
//    }
//
//    func flags(_ v: UnsafeRawPointer?) -> VkInstanceCreateInfo {
//        var s = self
//        s.pNext = v
//        return s
//    }
//
//    func next() -> UnsafeRawPointer? {
//        pNext
//    }
}

extension VkPhysicalDeviceFeatures {

    init(robustBufferAccess: Bool = false,
         fullDrawIndexUint32: Bool = false,
         imageCubeArray: Bool = false,
         independentBlend: Bool = false,
         geometryShader: Bool = false,
         tessellationShader: Bool = false,
         sampleRateShading: Bool = false,
         dualSrcBlend: Bool = false,
         logicOp: Bool = false,
         multiDrawIndirect: Bool = false,
         drawIndirectFirstInstance: Bool = false,
         depthClamp: Bool = false,
         depthBiasClamp: Bool = false,
         fillModeNonSolid: Bool = false,
         depthBounds: Bool = false,
         wideLines: Bool = false,
         largePoints: Bool = false,
         alphaToOne: Bool = false,
         multiViewport: Bool = false,
         samplerAnisotropy: Bool = false,
         textureCompressionETC2: Bool = false,
         textureCompressionASTC_LDR: Bool = false,
         textureCompressionBC: Bool = false,
         occlusionQueryPrecise: Bool = false,
         pipelineStatisticsQuery: Bool = false,
         vertexPipelineStoresAndAtomics: Bool = false,
         fragmentStoresAndAtomics: Bool = false,
         shaderTessellationAndGeometryPointSize: Bool = false,
         shaderImageGatherExtended: Bool = false,
         shaderStorageImageExtendedFormats: Bool = false,
         shaderStorageImageMultisample: Bool = false,
         shaderStorageImageReadWithoutFormat: Bool = false,
         shaderStorageImageWriteWithoutFormat: Bool = false,
         shaderUniformBufferArrayDynamicIndexing: Bool = false,
         shaderSampledImageArrayDynamicIndexing: Bool = false,
         shaderStorageBufferArrayDynamicIndexing: Bool = false,
         shaderStorageImageArrayDynamicIndexing: Bool = false,
         shaderClipDistance: Bool = false,
         shaderCullDistance: Bool = false,
         shaderFloat64: Bool = false,
         shaderInt64: Bool = false,
         shaderInt16: Bool = false,
         shaderResourceResidency: Bool = false,
         shaderResourceMinLod: Bool = false,
         sparseBinding: Bool = false,
         sparseResidencyBuffer: Bool = false,
         sparseResidencyImage2D: Bool = false,
         sparseResidencyImage3D: Bool = false,
         sparseResidency2Samples: Bool = false,
         sparseResidency4Samples: Bool = false,
         sparseResidency8Samples: Bool = false,
         sparseResidency16Samples: Bool = false,
         sparseResidencyAliased: Bool = false,
         variableMultisampleRate: Bool = false,
         inheritedQueries: Bool = false) {

        self.init(
                robustBufferAccess: UInt32(robustBufferAccess),
                fullDrawIndexUint32: UInt32(fullDrawIndexUint32),
                imageCubeArray: UInt32(imageCubeArray),
                independentBlend: UInt32(independentBlend),
                geometryShader: UInt32(geometryShader),
                tessellationShader: UInt32(tessellationShader),
                sampleRateShading: UInt32(sampleRateShading),
                dualSrcBlend: UInt32(dualSrcBlend),
                logicOp: UInt32(logicOp),
                multiDrawIndirect: UInt32(multiDrawIndirect),
                drawIndirectFirstInstance: UInt32(drawIndirectFirstInstance),
                depthClamp: UInt32(depthClamp),
                depthBiasClamp: UInt32(depthBiasClamp),
                fillModeNonSolid: UInt32(fillModeNonSolid),
                depthBounds: UInt32(depthBounds),
                wideLines: UInt32(wideLines),
                largePoints: UInt32(largePoints),
                alphaToOne: UInt32(alphaToOne),
                multiViewport: UInt32(multiViewport),
                samplerAnisotropy: UInt32(samplerAnisotropy),
                textureCompressionETC2: UInt32(textureCompressionETC2),
                textureCompressionASTC_LDR: UInt32(textureCompressionASTC_LDR),
                textureCompressionBC: UInt32(textureCompressionBC),
                occlusionQueryPrecise: UInt32(occlusionQueryPrecise),
                pipelineStatisticsQuery: UInt32(pipelineStatisticsQuery),
                vertexPipelineStoresAndAtomics: UInt32(vertexPipelineStoresAndAtomics),
                fragmentStoresAndAtomics: UInt32(fragmentStoresAndAtomics),
                shaderTessellationAndGeometryPointSize: UInt32(shaderTessellationAndGeometryPointSize),
                shaderImageGatherExtended: UInt32(shaderImageGatherExtended),
                shaderStorageImageExtendedFormats: UInt32(shaderStorageImageExtendedFormats),
                shaderStorageImageMultisample: UInt32(shaderStorageImageMultisample),
                shaderStorageImageReadWithoutFormat: UInt32(shaderStorageImageReadWithoutFormat),
                shaderStorageImageWriteWithoutFormat: UInt32(shaderStorageImageWriteWithoutFormat),
                shaderUniformBufferArrayDynamicIndexing: UInt32(shaderUniformBufferArrayDynamicIndexing),
                shaderSampledImageArrayDynamicIndexing: UInt32(shaderSampledImageArrayDynamicIndexing),
                shaderStorageBufferArrayDynamicIndexing: UInt32(shaderStorageBufferArrayDynamicIndexing),
                shaderStorageImageArrayDynamicIndexing: UInt32(shaderStorageImageArrayDynamicIndexing),
                shaderClipDistance: UInt32(shaderClipDistance),
                shaderCullDistance: UInt32(shaderCullDistance),
                shaderFloat64: UInt32(shaderFloat64),
                shaderInt64: UInt32(shaderInt64),
                shaderInt16: UInt32(shaderInt16),
                shaderResourceResidency: UInt32(shaderResourceResidency),
                shaderResourceMinLod: UInt32(shaderResourceMinLod),
                sparseBinding: UInt32(sparseBinding),
                sparseResidencyBuffer: UInt32(sparseResidencyBuffer),
                sparseResidencyImage2D: UInt32(sparseResidencyImage2D),
                sparseResidencyImage3D: UInt32(sparseResidencyImage3D),
                sparseResidency2Samples: UInt32(sparseResidency2Samples),
                sparseResidency4Samples: UInt32(sparseResidency4Samples),
                sparseResidency8Samples: UInt32(sparseResidency8Samples),
                sparseResidency16Samples: UInt32(sparseResidency16Samples),
                sparseResidencyAliased: UInt32(sparseResidencyAliased),
                variableMultisampleRate: UInt32(variableMultisampleRate),
                inheritedQueries: UInt32(inheritedQueries))
    }
}

extension VkFormatProperties {

    init(linearTilingFeatures: FormatFeature = [],
         optimalTilingFeatures: FormatFeature = [],
         bufferFeatures: FormatFeature = []) {

        self.init(
                linearTilingFeatures: linearTilingFeatures.rawValue,
                optimalTilingFeatures: optimalTilingFeatures.rawValue,
                bufferFeatures: bufferFeatures.rawValue)
    }
}

extension VkExtent3D {

    init(width: UInt32 = 0,
         height: UInt32 = 0,
         depth: UInt32 = 0) {

        self.init(
                width: width,
                height: height,
                depth: depth)
    }

    init(size: uvec2,
         depth: UInt32 = 0) {

        self.init(
                width: size.x,
                height: size.y,
                depth: depth)
    }

    init(size: uvec3) {

        self.init(
                width: size.x,
                height: size.y,
                depth: size.z)
    }
}

extension VkImageFormatProperties {

    init(maxExtent: VkExtent3D = VkExtent3D(),
         maxMipLevels: UInt32 = 0,
         maxArrayLayers: UInt32 = 0,
         sampleCounts: VkSampleCountFlags = 0,
         maxResourceSize: VkDeviceSize = 0) {

        self.init(
                maxExtent: maxExtent,
                maxMipLevels: maxMipLevels,
                maxArrayLayers: maxArrayLayers,
                sampleCounts: sampleCounts,
                maxResourceSize: maxResourceSize)
    }
}

extension VkPhysicalDeviceLimits {

    init(maxImageDimension1D: UInt32 = 0,
         maxImageDimension2D: UInt32 = 0,
         maxImageDimension3D: UInt32 = 0,
         maxImageDimensionCube: UInt32 = 0,
         maxImageArrayLayers: UInt32 = 0,
         maxTexelBufferElements: UInt32 = 0,
         maxUniformBufferRange: UInt32 = 0,
         maxStorageBufferRange: UInt32 = 0,
         maxPushConstantsSize: UInt32 = 0,
         maxMemoryAllocationCount: UInt32 = 0,
         maxSamplerAllocationCount: UInt32 = 0,
         bufferImageGranularity: VkDeviceSize = 0,
         sparseAddressSpaceSize: VkDeviceSize = 0,
         maxBoundDescriptorSets: UInt32 = 0,
         maxPerStageDescriptorSamplers: UInt32 = 0,
         maxPerStageDescriptorUniformBuffers: UInt32 = 0,
         maxPerStageDescriptorStorageBuffers: UInt32 = 0,
         maxPerStageDescriptorSampledImages: UInt32 = 0,
         maxPerStageDescriptorStorageImages: UInt32 = 0,
         maxPerStageDescriptorInputAttachments: UInt32 = 0,
         maxPerStageResources: UInt32 = 0,
         maxDescriptorSetSamplers: UInt32 = 0,
         maxDescriptorSetUniformBuffers: UInt32 = 0,
         maxDescriptorSetUniformBuffersDynamic: UInt32 = 0,
         maxDescriptorSetStorageBuffers: UInt32 = 0,
         maxDescriptorSetStorageBuffersDynamic: UInt32 = 0,
         maxDescriptorSetSampledImages: UInt32 = 0,
         maxDescriptorSetStorageImages: UInt32 = 0,
         maxDescriptorSetInputAttachments: UInt32 = 0,
         maxVertexInputAttributes: UInt32 = 0,
         maxVertexInputBindings: UInt32 = 0,
         maxVertexInputAttributeOffset: UInt32 = 0,
         maxVertexInputBindingStride: UInt32 = 0,
         maxVertexOutputComponents: UInt32 = 0,
         maxTessellationGenerationLevel: UInt32 = 0,
         maxTessellationPatchSize: UInt32 = 0,
         maxTessellationControlPerVertexInputComponents: UInt32 = 0,
         maxTessellationControlPerVertexOutputComponents: UInt32 = 0,
         maxTessellationControlPerPatchOutputComponents: UInt32 = 0,
         maxTessellationControlTotalOutputComponents: UInt32 = 0,
         maxTessellationEvaluationInputComponents: UInt32 = 0,
         maxTessellationEvaluationOutputComponents: UInt32 = 0,
         maxGeometryShaderInvocations: UInt32 = 0,
         maxGeometryInputComponents: UInt32 = 0,
         maxGeometryOutputComponents: UInt32 = 0,
         maxGeometryOutputVertices: UInt32 = 0,
         maxGeometryTotalOutputComponents: UInt32 = 0,
         maxFragmentInputComponents: UInt32 = 0,
         maxFragmentOutputAttachments: UInt32 = 0,
         maxFragmentDualSrcAttachments: UInt32 = 0,
         maxFragmentCombinedOutputResources: UInt32 = 0,
         maxComputeSharedMemorySize: UInt32 = 0,
         maxComputeWorkGroupCount: uvec3 = uvec3(0),
         maxComputeWorkGroupInvocations: UInt32 = 0,
         maxComputeWorkGroupSize: uvec3 = uvec3(0),
         subPixelPrecisionBits: UInt32 = 0,
         subTexelPrecisionBits: UInt32 = 0,
         mipmapPrecisionBits: UInt32 = 0,
         maxDrawIndexedIndexValue: UInt32 = 0,
         maxDrawIndirectCount: UInt32 = 0,
         maxSamplerLodBias: Float = 0,
         maxSamplerAnisotropy: Float = 0,
         maxViewports: UInt32 = 0,
         maxViewportDimensions: uvec2 = uvec2(0),
         viewportBoundsRange: vec2 = vec2(0),
         viewportSubPixelBits: UInt32 = 0,
         minMemoryMapAlignment: Int = 0, // TODO check
         minTexelBufferOffsetAlignment: VkDeviceSize = 0,
         minUniformBufferOffsetAlignment: VkDeviceSize = 0,
         minStorageBufferOffsetAlignment: VkDeviceSize = 0,
         minTexelOffset: Int32 = 0,
         maxTexelOffset: UInt32 = 0,
         minTexelGatherOffset: Int32 = 0,
         maxTexelGatherOffset: UInt32 = 0,
         minInterpolationOffset: Float = 0,
         maxInterpolationOffset: Float = 0,
         subPixelInterpolationOffsetBits: UInt32 = 0,
         maxFramebufferWidth: UInt32 = 0,
         maxFramebufferHeight: UInt32 = 0,
         maxFramebufferLayers: UInt32 = 0,
         framebufferColorSampleCounts: SampleCount = [],
         framebufferDepthSampleCounts: SampleCount = [],
         framebufferStencilSampleCounts: SampleCount = [],
         framebufferNoAttachmentsSampleCounts: SampleCount = [],
         maxColorAttachments: UInt32 = 0,
         sampledImageColorSampleCounts: SampleCount = [],
         sampledImageIntegerSampleCounts: SampleCount = [],
         sampledImageDepthSampleCounts: SampleCount = [],
         sampledImageStencilSampleCounts: SampleCount = [],
         storageImageSampleCounts: SampleCount = [],
         maxSampleMaskWords: UInt32 = 0,
         timestampComputeAndGraphics: Bool = false,
         timestampPeriod: Float = 0,
         maxClipDistances: UInt32 = 0,
         maxCullDistances: UInt32 = 0,
         maxCombinedClipAndCullDistances: UInt32 = 0,
         discreteQueuePriorities: UInt32 = 0,
         pointSizeRange: uvec2 = uvec2(0),
         lineWidthRange: uvec2 = uvec2(0),
         pointSizeGranularity: Float = 0,
         lineWidthGranularity: Float = 0,
         strictLines: Bool = false,
         standardSampleLocations: Bool = false,
         optimalBufferCopyOffsetAlignment: VkDeviceSize = 0,
         optimalBufferCopyRowPitchAlignment: VkDeviceSize = 0,
         nonCoherentAtomSize: VkDeviceSize = 0) {

        self.init(
                maxImageDimension1D = maxImageDimension1D,
                maxImageDimension2D = maxImageDimension2D,
                maxImageDimension3D = maxImageDimension3D,
                maxImageDimensionCube = maxImageDimensionCube,
                maxImageArrayLayers = maxImageArrayLayers,
                maxTexelBufferElements = maxTexelBufferElements,
                maxUniformBufferRange = maxUniformBufferRange,
                maxStorageBufferRange = maxStorageBufferRange,
                maxPushConstantsSize = maxPushConstantsSize,
                maxMemoryAllocationCount = maxMemoryAllocationCount,
                maxSamplerAllocationCount = maxSamplerAllocationCount,
                bufferImageGranularity = bufferImageGranularity,
                sparseAddressSpaceSize = sparseAddressSpaceSize,
                maxBoundDescriptorSets = maxBoundDescriptorSets,
                maxPerStageDescriptorSamplers = maxPerStageDescriptorSamplers,
                maxPerStageDescriptorUniformBuffers = maxPerStageDescriptorUniformBuffers,
                maxPerStageDescriptorStorageBuffers = maxPerStageDescriptorStorageBuffers,
                maxPerStageDescriptorSampledImages = maxPerStageDescriptorSampledImages,
                maxPerStageDescriptorStorageImages = maxPerStageDescriptorStorageImages,
                maxPerStageDescriptorInputAttachments = maxPerStageDescriptorInputAttachments,
                maxPerStageResources = maxPerStageResources,
                maxDescriptorSetSamplers = maxDescriptorSetSamplers,
                maxDescriptorSetUniformBuffers = maxDescriptorSetUniformBuffers,
                maxDescriptorSetUniformBuffersDynamic = maxDescriptorSetUniformBuffersDynamic,
                maxDescriptorSetStorageBuffers = maxDescriptorSetStorageBuffers,
                maxDescriptorSetStorageBuffersDynamic = maxDescriptorSetStorageBuffersDynamic,
                maxDescriptorSetSampledImages = maxDescriptorSetSampledImages,
                maxDescriptorSetStorageImages = maxDescriptorSetStorageImages,
                maxDescriptorSetInputAttachments = maxDescriptorSetInputAttachments,
                maxVertexInputAttributes = maxVertexInputAttributes,
                maxVertexInputBindings = maxVertexInputBindings,
                maxVertexInputAttributeOffset = maxVertexInputAttributeOffset,
                maxVertexInputBindingStride = maxVertexInputBindingStride,
                maxVertexOutputComponents = maxVertexOutputComponents,
                maxTessellationGenerationLevel = maxTessellationGenerationLevel,
                maxTessellationPatchSize = maxTessellationPatchSize,
                maxTessellationControlPerVertexInputComponents = maxTessellationControlPerVertexInputComponents,
                maxTessellationControlPerVertexOutputComponents = maxTessellationControlPerVertexOutputComponents,
                maxTessellationControlPerPatchOutputComponents = maxTessellationControlPerPatchOutputComponents,
                maxTessellationControlTotalOutputComponents = maxTessellationControlTotalOutputComponents,
                maxTessellationEvaluationInputComponents = maxTessellationEvaluationInputComponents,
                maxTessellationEvaluationOutputComponents = maxTessellationEvaluationOutputComponents,
                maxGeometryShaderInvocations = maxGeometryShaderInvocations,
                maxGeometryInputComponents = maxGeometryInputComponents,
                maxGeometryOutputComponents = maxGeometryOutputComponents,
                maxGeometryOutputVertices = maxGeometryOutputVertices,
                maxGeometryTotalOutputComponents = maxGeometryTotalOutputComponents,
                maxFragmentInputComponents = maxFragmentInputComponents,
                maxFragmentOutputAttachments = maxFragmentOutputAttachments,
                maxFragmentDualSrcAttachments = maxFragmentDualSrcAttachments,
                maxFragmentCombinedOutputResources = maxFragmentCombinedOutputResources,
                maxComputeSharedMemorySize = maxComputeSharedMemorySize,
                maxComputeWorkGroupCount = maxComputeWorkGroupCount
//                maxComputeWorkGroupInvocations: UInt32 = 0,
//                maxComputeWorkGroupSize: uvec3 = uvec3(0),
//                subPixelPrecisionBits: UInt32 = 0,
//                subTexelPrecisionBits: UInt32 = 0,
//                mipmapPrecisionBits: UInt32 = 0,
//                maxDrawIndexedIndexValue: UInt32 = 0,
//                maxDrawIndirectCount: UInt32 = 0,
//                maxSamplerLodBias: Float = 0,
//                maxSamplerAnisotropy: Float = 0,
//                maxViewports: UInt32 = 0,
//                maxViewportDimensions: uvec2 = uvec2(0),
//                viewportBoundsRange: vec2 = vec2(0),
//                viewportSubPixelBits: UInt32 = 0,
//                minMemoryMapAlignment: Int = 0, // TODO check
//                minTexelBufferOffsetAlignment: VkDeviceSize = 0,
//                minUniformBufferOffsetAlignment: VkDeviceSize = 0,
//                minStorageBufferOffsetAlignment: VkDeviceSize = 0,
//                minTexelOffset: Int32 = 0,
//                maxTexelOffset: UInt32 = 0,
//                minTexelGatherOffset: Int32 = 0,
//                maxTexelGatherOffset: UInt32 = 0,
//                minInterpolationOffset: Float = 0,
//                maxInterpolationOffset: Float = 0,
//                subPixelInterpolationOffsetBits: UInt32 = 0,
//                maxFramebufferWidth: UInt32 = 0,
//                maxFramebufferHeight: UInt32 = 0,
//                maxFramebufferLayers: UInt32 = 0,
//                framebufferColorSampleCounts: SampleCount = [],
//                framebufferDepthSampleCounts: SampleCount = [],
//                framebufferStencilSampleCounts: SampleCount = [],
//                framebufferNoAttachmentsSampleCounts: SampleCount = [],
//                maxColorAttachments: UInt32 = 0,
//                sampledImageColorSampleCounts: SampleCount = [],
//                sampledImageIntegerSampleCounts: SampleCount = [],
//                sampledImageDepthSampleCounts: SampleCount = [],
//                sampledImageStencilSampleCounts: SampleCount = [],
//                storageImageSampleCounts: SampleCount = [],
//                maxSampleMaskWords: UInt32 = 0,
//                timestampComputeAndGraphics: Bool = false,
//                timestampPeriod: Float = 0,
//                maxClipDistances: UInt32 = 0,
//                maxCullDistances: UInt32 = 0,
//                maxCombinedClipAndCullDistances: UInt32 = 0,
//                discreteQueuePriorities: UInt32 = 0,
//                pointSizeRange: uvec2 = uvec2(0),
//                lineWidthRange: uvec2 = uvec2(0),
//                pointSizeGranularity: Float = 0,
//                lineWidthGranularity: Float = 0,
//                strictLines: Bool = false,
//                standardSampleLocations: Bool = false,
//                optimalBufferCopyOffsetAlignment: VkDeviceSize = 0,
//                optimalBufferCopyRowPitchAlignment: VkDeviceSize = 0,
//                nonCoherentAtomSize: VkDeviceSize = 0
        )
    }
}