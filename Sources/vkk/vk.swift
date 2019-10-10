//
// Created by elect on 06/10/19.
//

import Foundation
import vulkan
import glm

struct vk {

    static func ApplicationInfo(
            applicationName: String? = nil,
            applicationVersion: Int = 0,
            engineName: String? = nil,
            engineVersion: Int = 0,
            apiVersion: Int = 0) -> VkApplicationInfo {

        VkApplicationInfo(
                sType: VK_STRUCTURE_TYPE_APPLICATION_INFO,
                pNext: nil,
                pApplicationName: applicationName,
                applicationVersion: UInt32(applicationVersion),
                pEngineName: engineName,
                engineVersion: UInt32(engineVersion),
                apiVersion: UInt32(apiVersion))
    }

    static func InstanceCreateInfo(
            next: UnsafeRawPointer? = nil,
            applicationInfo: UnsafePointer<VkApplicationInfo>? = nil,
            enabledLayerCount: Int = 0,
            enabledLayerNames: UnsafePointer<UnsafePointer<Int8>?>? = nil,
            enabledExtensionCount: Int = 0,
            enabledExtensionNames: UnsafePointer<UnsafePointer<Int8>?>? = nil) -> VkInstanceCreateInfo {

        VkInstanceCreateInfo(
                sType: VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
                pNext: next,
                flags: 0,
                pApplicationInfo: applicationInfo,
                enabledLayerCount: UInt32(enabledLayerCount),
                ppEnabledLayerNames: enabledLayerNames,
                enabledExtensionCount: UInt32(enabledExtensionCount),
                ppEnabledExtensionNames: enabledExtensionNames)
    }

    static func PhysicalDeviceFeatures(
            robustBufferAccess: Bool = false,
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
            inheritedQueries: Bool = false) -> VkPhysicalDeviceFeatures {

        VkPhysicalDeviceFeatures(
                robustBufferAccess: VkBool32(robustBufferAccess),
                fullDrawIndexUint32: VkBool32(fullDrawIndexUint32),
                imageCubeArray: VkBool32(imageCubeArray),
                independentBlend: VkBool32(independentBlend),
                geometryShader: VkBool32(geometryShader),
                tessellationShader: VkBool32(tessellationShader),
                sampleRateShading: VkBool32(sampleRateShading),
                dualSrcBlend: VkBool32(dualSrcBlend),
                logicOp: VkBool32(logicOp),
                multiDrawIndirect: VkBool32(multiDrawIndirect),
                drawIndirectFirstInstance: VkBool32(drawIndirectFirstInstance),
                depthClamp: VkBool32(depthClamp),
                depthBiasClamp: VkBool32(depthBiasClamp),
                fillModeNonSolid: VkBool32(fillModeNonSolid),
                depthBounds: VkBool32(depthBounds),
                wideLines: VkBool32(wideLines),
                largePoints: VkBool32(largePoints),
                alphaToOne: VkBool32(alphaToOne),
                multiViewport: VkBool32(multiViewport),
                samplerAnisotropy: VkBool32(samplerAnisotropy),
                textureCompressionETC2: VkBool32(textureCompressionETC2),
                textureCompressionASTC_LDR: VkBool32(textureCompressionASTC_LDR),
                textureCompressionBC: VkBool32(textureCompressionBC),
                occlusionQueryPrecise: VkBool32(occlusionQueryPrecise),
                pipelineStatisticsQuery: VkBool32(pipelineStatisticsQuery),
                vertexPipelineStoresAndAtomics: VkBool32(vertexPipelineStoresAndAtomics),
                fragmentStoresAndAtomics: VkBool32(fragmentStoresAndAtomics),
                shaderTessellationAndGeometryPointSize: VkBool32(shaderTessellationAndGeometryPointSize),
                shaderImageGatherExtended: VkBool32(shaderImageGatherExtended),
                shaderStorageImageExtendedFormats: VkBool32(shaderStorageImageExtendedFormats),
                shaderStorageImageMultisample: VkBool32(shaderStorageImageMultisample),
                shaderStorageImageReadWithoutFormat: VkBool32(shaderStorageImageReadWithoutFormat),
                shaderStorageImageWriteWithoutFormat: VkBool32(shaderStorageImageWriteWithoutFormat),
                shaderUniformBufferArrayDynamicIndexing: VkBool32(shaderUniformBufferArrayDynamicIndexing),
                shaderSampledImageArrayDynamicIndexing: VkBool32(shaderSampledImageArrayDynamicIndexing),
                shaderStorageBufferArrayDynamicIndexing: VkBool32(shaderStorageBufferArrayDynamicIndexing),
                shaderStorageImageArrayDynamicIndexing: VkBool32(shaderStorageImageArrayDynamicIndexing),
                shaderClipDistance: VkBool32(shaderClipDistance),
                shaderCullDistance: VkBool32(shaderCullDistance),
                shaderFloat64: VkBool32(shaderFloat64),
                shaderInt64: VkBool32(shaderInt64),
                shaderInt16: VkBool32(shaderInt16),
                shaderResourceResidency: VkBool32(shaderResourceResidency),
                shaderResourceMinLod: VkBool32(shaderResourceMinLod),
                sparseBinding: VkBool32(sparseBinding),
                sparseResidencyBuffer: VkBool32(sparseResidencyBuffer),
                sparseResidencyImage2D: VkBool32(sparseResidencyImage2D),
                sparseResidencyImage3D: VkBool32(sparseResidencyImage3D),
                sparseResidency2Samples: VkBool32(sparseResidency2Samples),
                sparseResidency4Samples: VkBool32(sparseResidency4Samples),
                sparseResidency8Samples: VkBool32(sparseResidency8Samples),
                sparseResidency16Samples: VkBool32(sparseResidency16Samples),
                sparseResidencyAliased: VkBool32(sparseResidencyAliased),
                variableMultisampleRate: VkBool32(variableMultisampleRate),
                inheritedQueries: VkBool32(inheritedQueries))
    }

    static func FormatProperties(
            linearTilingFeatures: FormatFeature = [],
            optimalTilingFeatures: FormatFeature = [],
            bufferFeatures: FormatFeature = []) -> VkFormatProperties {

        VkFormatProperties(
                linearTilingFeatures: linearTilingFeatures.rawValue,
                optimalTilingFeatures: optimalTilingFeatures.rawValue,
                bufferFeatures: bufferFeatures.rawValue)
    }

    static func Extent3D(
            width: Int = 0,
            height: Int = 0,
            depth: Int = 0) -> VkExtent3D {

        VkExtent3D(
                width: UInt32(width),
                height: UInt32(height),
                depth: UInt32(depth))
    }

    static func Extent3D(size: uvec3) -> VkExtent3D {

        VkExtent3D(
                width: size.x,
                height: size.y,
                depth: size.z)
    }

//    static func Extent3D(size: ivec3) -> VkExtent3D { TODO
//
//        VkExtent3D(
//                width: UInt32(size.x),
//                height: UInt32(size.y),
//                depth: UInt32(size.z))
//    }

    static func ImageFormatProperties(
            maxExtent: VkExtent3D = VkExtent3D(),
            maxMipLevels: Int = 0,
            maxArrayLayers: Int = 0,
            sampleCounts: SampleCount = [],
            maxResourceSize: VkDeviceSize = 0) -> VkImageFormatProperties {

        VkImageFormatProperties(
                maxExtent: maxExtent,
                maxMipLevels: UInt32(maxMipLevels),
                maxArrayLayers: UInt32(maxArrayLayers),
                sampleCounts: sampleCounts.rawValue,
                maxResourceSize: maxResourceSize)
    }

    static func PhysicalDeviceLimits(
            maxImageDimension1D: Int = 0,
            maxImageDimension2D: Int = 0,
            maxImageDimension3D: Int = 0,
            maxImageDimensionCube: Int = 0,
            maxImageArrayLayers: Int = 0,
            maxTexelBufferElements: Int = 0,
            maxUniformBufferRange: Int = 0,
            maxStorageBufferRange: Int = 0,
            maxPushConstantsSize: Int = 0,
            maxMemoryAllocationCount: Int = 0,
            maxSamplerAllocationCount: Int = 0,
            bufferImageGranularity: VkDeviceSize = 0,
            sparseAddressSpaceSize: VkDeviceSize = 0,
            maxBoundDescriptorSets: Int = 0,
            maxPerStageDescriptorSamplers: Int = 0,
            maxPerStageDescriptorUniformBuffers: Int = 0,
            maxPerStageDescriptorStorageBuffers: Int = 0,
            maxPerStageDescriptorSampledImages: Int = 0,
            maxPerStageDescriptorStorageImages: Int = 0,
            maxPerStageDescriptorInputAttachments: Int = 0,
            maxPerStageResources: Int = 0,
            maxDescriptorSetSamplers: Int = 0,
            maxDescriptorSetUniformBuffers: Int = 0,
            maxDescriptorSetUniformBuffersDynamic: Int = 0,
            maxDescriptorSetStorageBuffers: Int = 0,
            maxDescriptorSetStorageBuffersDynamic: Int = 0,
            maxDescriptorSetSampledImages: Int = 0,
            maxDescriptorSetStorageImages: Int = 0,
            maxDescriptorSetInputAttachments: Int = 0,
            maxVertexInputAttributes: Int = 0,
            maxVertexInputBindings: Int = 0,
            maxVertexInputAttributeOffset: Int = 0,
            maxVertexInputBindingStride: Int = 0,
            maxVertexOutputComponents: Int = 0,
            maxTessellationGenerationLevel: Int = 0,
            maxTessellationPatchSize: Int = 0,
            maxTessellationControlPerVertexInputComponents: Int = 0,
            maxTessellationControlPerVertexOutputComponents: Int = 0,
            maxTessellationControlPerPatchOutputComponents: Int = 0,
            maxTessellationControlTotalOutputComponents: Int = 0,
            maxTessellationEvaluationInputComponents: Int = 0,
            maxTessellationEvaluationOutputComponents: Int = 0,
            maxGeometryShaderInvocations: Int = 0,
            maxGeometryInputComponents: Int = 0,
            maxGeometryOutputComponents: Int = 0,
            maxGeometryOutputVertices: Int = 0,
            maxGeometryTotalOutputComponents: Int = 0,
            maxFragmentInputComponents: Int = 0,
            maxFragmentOutputAttachments: Int = 0,
            maxFragmentDualSrcAttachments: Int = 0,
            maxFragmentCombinedOutputResources: Int = 0,
            maxComputeSharedMemorySize: Int = 0,
            maxComputeWorkGroupCount: uvec3 = uvec3(0),
            maxComputeWorkGroupInvocations: Int = 0,
            maxComputeWorkGroupSize: uvec3 = uvec3(0),
            subPixelPrecisionBits: Int = 0,
            subTexelPrecisionBits: Int = 0,
            mipmapPrecisionBits: Int = 0,
            maxDrawIndexedIndexValue: Int = 0,
            maxDrawIndirectCount: Int = 0,
            maxSamplerLodBias: Float = 0,
            maxSamplerAnisotropy: Float = 0,
            maxViewports: Int = 0,
            maxViewportDimensions: uvec2 = uvec2(0),
            viewportBoundsRange: vec2 = vec2(0),
            viewportSubPixelBits: Int = 0,
            minMemoryMapAlignment: Int = 0, // TODO check
            minTexelBufferOffsetAlignment: VkDeviceSize = 0,
            minUniformBufferOffsetAlignment: VkDeviceSize = 0,
            minStorageBufferOffsetAlignment: VkDeviceSize = 0,
            minTexelOffset: Int = 0,
            maxTexelOffset: Int = 0,
            minTexelGatherOffset: Int = 0,
            maxTexelGatherOffset: Int = 0,
            minInterpolationOffset: Float = 0,
            maxInterpolationOffset: Float = 0,
            subPixelInterpolationOffsetBits: Int = 0,
            maxFramebufferWidth: Int = 0,
            maxFramebufferHeight: Int = 0,
            maxFramebufferLayers: Int = 0,
            framebufferColorSampleCounts: SampleCount = [],
            framebufferDepthSampleCounts: SampleCount = [],
            framebufferStencilSampleCounts: SampleCount = [],
            framebufferNoAttachmentsSampleCounts: SampleCount = [],
            maxColorAttachments: Int = 0,
            sampledImageColorSampleCounts: SampleCount = [],
            sampledImageIntegerSampleCounts: SampleCount = [],
            sampledImageDepthSampleCounts: SampleCount = [],
            sampledImageStencilSampleCounts: SampleCount = [],
            storageImageSampleCounts: SampleCount = [],
            maxSampleMaskWords: Int = 0,
            timestampComputeAndGraphics: Bool = false,
            timestampPeriod: Float = 0,
            maxClipDistances: Int = 0,
            maxCullDistances: Int = 0,
            maxCombinedClipAndCullDistances: Int = 0,
            discreteQueuePriorities: Int = 0,
            pointSizeRange: vec2 = vec2(0),
            lineWidthRange: vec2 = vec2(0),
            pointSizeGranularity: Float = 0,
            lineWidthGranularity: Float = 0,
            strictLines: Bool = false,
            standardSampleLocations: Bool = false,
            optimalBufferCopyOffsetAlignment: VkDeviceSize = 0,
            optimalBufferCopyRowPitchAlignment: VkDeviceSize = 0,
            nonCoherentAtomSize: VkDeviceSize = 0) -> VkPhysicalDeviceLimits {

        VkPhysicalDeviceLimits(
                maxImageDimension1D: UInt32(maxImageDimension1D),
                maxImageDimension2D: UInt32(maxImageDimension2D),
                maxImageDimension3D: UInt32(maxImageDimension3D),
                maxImageDimensionCube: UInt32(maxImageDimensionCube),
                maxImageArrayLayers: UInt32(maxImageArrayLayers),
                maxTexelBufferElements: UInt32(maxTexelBufferElements),
                maxUniformBufferRange: UInt32(maxUniformBufferRange),
                maxStorageBufferRange: UInt32(maxStorageBufferRange),
                maxPushConstantsSize: UInt32(maxPushConstantsSize),
                maxMemoryAllocationCount: UInt32(maxMemoryAllocationCount),
                maxSamplerAllocationCount: UInt32(maxSamplerAllocationCount),
                bufferImageGranularity: bufferImageGranularity,
                sparseAddressSpaceSize: sparseAddressSpaceSize,
                maxBoundDescriptorSets: UInt32(maxBoundDescriptorSets),
                maxPerStageDescriptorSamplers: UInt32(maxPerStageDescriptorSamplers),
                maxPerStageDescriptorUniformBuffers: UInt32(maxPerStageDescriptorUniformBuffers),
                maxPerStageDescriptorStorageBuffers: UInt32(maxPerStageDescriptorStorageBuffers),
                maxPerStageDescriptorSampledImages: UInt32(maxPerStageDescriptorSampledImages),
                maxPerStageDescriptorStorageImages: UInt32(maxPerStageDescriptorStorageImages),
                maxPerStageDescriptorInputAttachments: UInt32(maxPerStageDescriptorInputAttachments),
                maxPerStageResources: UInt32(maxPerStageResources),
                maxDescriptorSetSamplers: UInt32(maxDescriptorSetSamplers),
                maxDescriptorSetUniformBuffers: UInt32(maxDescriptorSetUniformBuffers),
                maxDescriptorSetUniformBuffersDynamic: UInt32(maxDescriptorSetUniformBuffersDynamic),
                maxDescriptorSetStorageBuffers: UInt32(maxDescriptorSetStorageBuffers),
                maxDescriptorSetStorageBuffersDynamic: UInt32(maxDescriptorSetStorageBuffersDynamic),
                maxDescriptorSetSampledImages: UInt32(maxDescriptorSetSampledImages),
                maxDescriptorSetStorageImages: UInt32(maxDescriptorSetStorageImages),
                maxDescriptorSetInputAttachments: UInt32(maxDescriptorSetInputAttachments),
                maxVertexInputAttributes: UInt32(maxVertexInputAttributes),
                maxVertexInputBindings: UInt32(maxVertexInputBindings),
                maxVertexInputAttributeOffset: UInt32(maxVertexInputAttributeOffset),
                maxVertexInputBindingStride: UInt32(maxVertexInputBindingStride),
                maxVertexOutputComponents: UInt32(maxVertexOutputComponents),
                maxTessellationGenerationLevel: UInt32(maxTessellationGenerationLevel),
                maxTessellationPatchSize: UInt32(maxTessellationPatchSize),
                maxTessellationControlPerVertexInputComponents: UInt32(maxTessellationControlPerVertexInputComponents),
                maxTessellationControlPerVertexOutputComponents: UInt32(maxTessellationControlPerVertexOutputComponents),
                maxTessellationControlPerPatchOutputComponents: UInt32(maxTessellationControlPerPatchOutputComponents),
                maxTessellationControlTotalOutputComponents: UInt32(maxTessellationControlTotalOutputComponents),
                maxTessellationEvaluationInputComponents: UInt32(maxTessellationEvaluationInputComponents),
                maxTessellationEvaluationOutputComponents: UInt32(maxTessellationEvaluationOutputComponents),
                maxGeometryShaderInvocations: UInt32(maxGeometryShaderInvocations),
                maxGeometryInputComponents: UInt32(maxGeometryInputComponents),
                maxGeometryOutputComponents: UInt32(maxGeometryOutputComponents),
                maxGeometryOutputVertices: UInt32(maxGeometryOutputVertices),
                maxGeometryTotalOutputComponents: UInt32(maxGeometryTotalOutputComponents),
                maxFragmentInputComponents: UInt32(maxFragmentInputComponents),
                maxFragmentOutputAttachments: UInt32(maxFragmentOutputAttachments),
                maxFragmentDualSrcAttachments: UInt32(maxFragmentDualSrcAttachments),
                maxFragmentCombinedOutputResources: UInt32(maxFragmentCombinedOutputResources),
                maxComputeSharedMemorySize: UInt32(maxComputeSharedMemorySize),
                maxComputeWorkGroupCount: maxComputeWorkGroupCount.asTuple,
                maxComputeWorkGroupInvocations: UInt32(maxComputeWorkGroupInvocations),
                maxComputeWorkGroupSize: maxComputeWorkGroupSize.asTuple,
                subPixelPrecisionBits: UInt32(subPixelPrecisionBits),
                subTexelPrecisionBits: UInt32(subTexelPrecisionBits),
                mipmapPrecisionBits: UInt32(mipmapPrecisionBits),
                maxDrawIndexedIndexValue: UInt32(maxDrawIndexedIndexValue),
                maxDrawIndirectCount: UInt32(maxDrawIndirectCount),
                maxSamplerLodBias: maxSamplerLodBias,
                maxSamplerAnisotropy: maxSamplerAnisotropy,
                maxViewports: UInt32(maxViewports),
                maxViewportDimensions: maxViewportDimensions.asTuple,
                viewportBoundsRange: viewportBoundsRange.asTuple,
                viewportSubPixelBits: UInt32(viewportSubPixelBits),
                minMemoryMapAlignment: minMemoryMapAlignment,
                minTexelBufferOffsetAlignment: minTexelBufferOffsetAlignment,
                minUniformBufferOffsetAlignment: minUniformBufferOffsetAlignment,
                minStorageBufferOffsetAlignment: minStorageBufferOffsetAlignment,
                minTexelOffset: Int32(minTexelOffset),
                maxTexelOffset: UInt32(maxTexelOffset),
                minTexelGatherOffset: Int32(minTexelGatherOffset),
                maxTexelGatherOffset: UInt32(maxTexelGatherOffset),
                minInterpolationOffset: minInterpolationOffset,
                maxInterpolationOffset: maxInterpolationOffset,
                subPixelInterpolationOffsetBits: UInt32(subPixelInterpolationOffsetBits),
                maxFramebufferWidth: UInt32(maxFramebufferWidth),
                maxFramebufferHeight: UInt32(maxFramebufferHeight),
                maxFramebufferLayers: UInt32(maxFramebufferLayers),
                framebufferColorSampleCounts: framebufferColorSampleCounts.rawValue,
                framebufferDepthSampleCounts: framebufferDepthSampleCounts.rawValue,
                framebufferStencilSampleCounts: framebufferStencilSampleCounts.rawValue,
                framebufferNoAttachmentsSampleCounts: framebufferNoAttachmentsSampleCounts.rawValue,
                maxColorAttachments: UInt32(maxColorAttachments),
                sampledImageColorSampleCounts: sampledImageColorSampleCounts.rawValue,
                sampledImageIntegerSampleCounts: sampledImageIntegerSampleCounts.rawValue,
                sampledImageDepthSampleCounts: sampledImageDepthSampleCounts.rawValue,
                sampledImageStencilSampleCounts: sampledImageStencilSampleCounts.rawValue,
                storageImageSampleCounts: storageImageSampleCounts.rawValue,
                maxSampleMaskWords: UInt32(maxSampleMaskWords),
                timestampComputeAndGraphics: VkBool32(timestampComputeAndGraphics),
                timestampPeriod: timestampPeriod,
                maxClipDistances: UInt32(maxClipDistances),
                maxCullDistances: UInt32(maxCullDistances),
                maxCombinedClipAndCullDistances: UInt32(maxCombinedClipAndCullDistances),
                discreteQueuePriorities: UInt32(discreteQueuePriorities),
                pointSizeRange: pointSizeRange.asTuple,
                lineWidthRange: lineWidthRange.asTuple,
                pointSizeGranularity: pointSizeGranularity,
                lineWidthGranularity: lineWidthGranularity,
                strictLines: VkBool32(strictLines),
                standardSampleLocations: VkBool32(standardSampleLocations),
                optimalBufferCopyOffsetAlignment: optimalBufferCopyOffsetAlignment,
                optimalBufferCopyRowPitchAlignment: optimalBufferCopyRowPitchAlignment,
                nonCoherentAtomSize: nonCoherentAtomSize)
    }

    static func PhysicalDeviceSparseProperties(
            residencyStandard2DBlockShape: Bool = false,
            residencyStandard2DMultisampleBlockShape: Bool = false,
            residencyStandard3DBlockShape: Bool = false,
            residencyAlignedMipSize: Bool = false,
            residencyNonResidentStrict: Bool = false) -> VkPhysicalDeviceSparseProperties {

        VkPhysicalDeviceSparseProperties(
                residencyStandard2DBlockShape: VkBool32(residencyStandard2DBlockShape),
                residencyStandard2DMultisampleBlockShape: VkBool32(residencyStandard2DMultisampleBlockShape),
                residencyStandard3DBlockShape: VkBool32(residencyStandard3DBlockShape),
                residencyAlignedMipSize: VkBool32(residencyAlignedMipSize),
                residencyNonResidentStrict: VkBool32(residencyNonResidentStrict))
    }

    static func PhysicalDeviceProperties(
            apiVersion: Int = 0,
            driverVersion: Int = 0,
            vendorID: Int = 0,
            deviceID: Int = 0,
            deviceType: PhysicalDeviceType = PhysicalDeviceType.other,
            deviceName: String = "", // [VK_MAX_PHYSICAL_DEVICE_NAME_SIZE] ~256
            pipelineCacheUUID: Tuple16_UInt8 = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), //[VK_UUID_SIZE] ~16
            limits: VkPhysicalDeviceLimits = VkPhysicalDeviceLimits(),
            sparseProperties: VkPhysicalDeviceSparseProperties = VkPhysicalDeviceSparseProperties()) -> VkPhysicalDeviceProperties {

        var res = VkPhysicalDeviceProperties()

        res.apiVersion = UInt32(apiVersion)
        res.driverVersion = UInt32(driverVersion)
        res.vendorID = UInt32(vendorID)
        res.deviceID = UInt32(deviceID)
        res.deviceType = deviceType.value
        withUnsafeMutableBytes(of: &res.deviceName) { ptr in
            ptr.copyBytes(from: deviceName.utf8.prefix(ptr.count))
        }
        res.pipelineCacheUUID = pipelineCacheUUID
        res.limits = limits
        res.sparseProperties = sparseProperties

        return res
    }

    static func QueueFamilyProperties(
            queueFlags: QueueFlags = [],
            queueCount: Int = 0,
            timestampValidBits: Int = 0,
            minImageTransferGranularity: VkExtent3D = VkExtent3D()) -> VkQueueFamilyProperties {

        VkQueueFamilyProperties(
                queueFlags: queueFlags.rawValue,
                queueCount: UInt32(queueCount),
                timestampValidBits: UInt32(timestampValidBits),
                minImageTransferGranularity: minImageTransferGranularity)
    }

    static func MemoryType(
            propertyFlags: MemoryProperty = [],
            heapIndex: Int) -> VkMemoryType {

        VkMemoryType(
                propertyFlags: propertyFlags.rawValue,
                heapIndex: UInt32(heapIndex))
    }

    static func MemoryHeap(
            size: VkDeviceSize = 0,
            flags: MemoryHeapFlags = []) -> VkMemoryHeap {

        VkMemoryHeap(
                size: size,
                flags: flags.rawValue)
    }

    static func PhysicalDeviceMemoryProperties(
            memoryTypes: [VkMemoryType],
            memoryHeaps: [VkMemoryHeap]) -> VkPhysicalDeviceMemoryProperties {

        var res = VkPhysicalDeviceMemoryProperties()

        res.memoryTypeCount = UInt32(memoryTypes.count)
        memcpy(&res.memoryTypes, memoryTypes, MemoryLayout<VkMemoryType>.size * memoryTypes.count)
        res.memoryHeapCount = UInt32(memoryHeaps.count)
        memcpy(&res.memoryHeaps, memoryHeaps, MemoryLayout<VkMemoryHeap>.size * memoryHeaps.count)

        return res
    }

    static func DeviceQueueCreateInfo(
            next: UnsafeRawPointer? = nil,
            flags: DeviceQueueCreate = [],
            queueFamilyIndex: Int = 0,
            queuePriorities: [Float]) -> VkDeviceQueueCreateInfo {

        VkDeviceQueueCreateInfo(
                sType: VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO,
                pNext: next,
                flags: flags.rawValue,
                queueFamilyIndex: UInt32(queueFamilyIndex),
                queueCount: UInt32(queuePriorities.count),
                pQueuePriorities: queuePriorities)
    }

    static func DeviceCreateInfo(
            next: UnsafeRawPointer? = nil,
            queueCreateInfos: [VkDeviceQueueCreateInfo],
            enabledExtensionCount: Int = 0,
            enabledExtensionNames: UnsafePointer<UnsafePointer<Int8>?>? = nil,
            enabledFeatures: UnsafePointer<VkPhysicalDeviceFeatures>? = nil) -> VkDeviceCreateInfo {

        VkDeviceCreateInfo(
                sType: VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO,
                pNext: next,
                flags: 0,
                queueCreateInfoCount: UInt32(queueCreateInfos.count),
                pQueueCreateInfos: queueCreateInfos,
                enabledLayerCount: UInt32(0),
                ppEnabledLayerNames: nil,
                enabledExtensionCount: UInt32(enabledExtensionCount),
                ppEnabledExtensionNames: enabledExtensionNames,
                pEnabledFeatures: enabledFeatures)
    }

    static func ExtensionProperties(
            extensionName: String = "", // [VK_MAX_EXTENSION_NAME_SIZE]; ~256
            specVersion: Int = 0) -> VkExtensionProperties {

        var res = VkExtensionProperties()

        withUnsafeMutableBytes(of: &res.extensionName) { ptr in
            ptr.copyBytes(from: extensionName.utf8.prefix(ptr.count))
        }
        res.specVersion = UInt32(specVersion)

        return res
    }

    static func LayerProperties(
            layerName: String = "", //[VK_MAX_EXTENSION_NAME_SIZE]; ~256
            specVersion: Int = 0,
            implementationVersion: Int = 0,
            description: String = "" /*[VK_MAX_DESCRIPTION_SIZE]; ~256 */) -> VkLayerProperties {

        var res = VkLayerProperties()
        withUnsafeMutableBytes(of: &res.layerName) { ptr in
            ptr.copyBytes(from: layerName.utf8.prefix(ptr.count))
        }
        res.specVersion = UInt32(specVersion)
        res.implementationVersion = UInt32(implementationVersion)
        withUnsafeMutableBytes(of: &res.description) { ptr in
            ptr.copyBytes(from: description.utf8.prefix(ptr.count))
        }

        return res
    }

    static func SubmitInfo(
            next: UnsafeRawPointer? = nil,
            waitSemaphores: [VkSemaphore?]? = nil,
            waitDstStageMask: [PipelineStage]? = nil,
            commandBuffers: [VkCommandBuffer?]? = nil,
            signalSemaphores: [VkSemaphore?]? = nil) -> VkSubmitInfo {


        let waitDstStageMask: [VkPipelineStageFlags]? = waitDstStageMask?.map {
            $0.rawValue
        }
        return waitSemaphores.withOptionalUnsafeBufferPointer { pWaitSemaphores in
            VkSubmitInfo(
                    sType: VK_STRUCTURE_TYPE_SUBMIT_INFO,
                    pNext: next,
                    waitSemaphoreCount: UInt32(waitSemaphores?.count ?? 0),
                    pWaitSemaphores: pWaitSemaphores?.baseAddress,
                    pWaitDstStageMask: waitDstStageMask ?? nil,
                    commandBufferCount: UInt32(commandBuffers?.count ?? 0),
                    pCommandBuffers: commandBuffers ?? nil,
                    signalSemaphoreCount: UInt32(signalSemaphores?.count ?? 0),
                    pSignalSemaphores: signalSemaphores ?? nil)
        }
    }

    static func MemoryAllocateInfo(
            next: UnsafeRawPointer? = nil,
            allocationSize: VkDeviceSize = 0,
            memoryTypeIndex: Int = 0) -> VkMemoryAllocateInfo {

        VkMemoryAllocateInfo(
                sType: VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO,
                pNext: next,
                allocationSize: allocationSize,
                memoryTypeIndex: UInt32(memoryTypeIndex))
    }

    static func MappedMemoryRange(
            memory: VkDeviceMemory,
            offset: VkDeviceSize = 0,
            size: VkDeviceSize = 0) -> VkMappedMemoryRange {

        VkMappedMemoryRange(
                sType: VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE,
                pNext: nil,
                memory: memory,
                offset: offset,
                size: size)
    }

    static func MemoryRequirements(
            size: VkDeviceSize = 0,
            alignment: VkDeviceSize = 0,
            memoryTypeBits: Int = 0) -> VkMemoryRequirements {

        VkMemoryRequirements(
                size: size,
                alignment: alignment,
                memoryTypeBits: UInt32(memoryTypeBits))
    }

    static func SparseImageFormatProperties(
            aspectMask: ImageAspect = [],
            imageGranularity: VkExtent3D = VkExtent3D(),
            flags: SparseImageFormat = []) -> VkSparseImageFormatProperties {

        VkSparseImageFormatProperties(
                aspectMask: aspectMask.rawValue,
                imageGranularity: imageGranularity,
                flags: flags.rawValue)
    }

    static func SparseImageMemoryRequirements(
            formatProperties: VkSparseImageFormatProperties = VkSparseImageFormatProperties(),
            imageMipTailFirstLod: Int = 0,
            imageMipTailSize: VkDeviceSize = 0,
            imageMipTailOffset: VkDeviceSize = 0,
            imageMipTailStride: VkDeviceSize = 0) -> VkSparseImageMemoryRequirements {

        VkSparseImageMemoryRequirements(
                formatProperties: formatProperties,
                imageMipTailFirstLod: UInt32(imageMipTailFirstLod),
                imageMipTailSize: imageMipTailSize,
                imageMipTailOffset: imageMipTailOffset,
                imageMipTailStride: imageMipTailStride)
    }

    static func SparseMemoryBind(
            resourceOffset: VkDeviceSize = 0,
            size: VkDeviceSize = 0,
            memory: VkDeviceMemory,
            memoryOffset: VkDeviceSize = 0,
            flags: SparseMemoryBind = []) -> VkSparseMemoryBind {

        VkSparseMemoryBind(
                resourceOffset: resourceOffset,
                size: size,
                memory: memory,
                memoryOffset: memoryOffset,
                flags: flags.rawValue)
    }

    static func SparseBufferMemoryBindInfo(
            buffer: VkBuffer,
            binds: [VkSparseMemoryBind]) -> VkSparseBufferMemoryBindInfo {

        VkSparseBufferMemoryBindInfo(
                buffer: buffer,
                bindCount: UInt32(binds.count),
                pBinds: binds)
    }

    static func SparseImageOpaqueMemoryBindInfo(
            image: VkImage,
            binds: [VkSparseMemoryBind]) -> VkSparseImageOpaqueMemoryBindInfo {

        VkSparseImageOpaqueMemoryBindInfo(
                image: image,
                bindCount: UInt32(binds.count),
                pBinds: binds)
    }

    static func ImageSubresource(
            aspectMask: ImageAspect,
            mipLevel: Int = 0,
            arrayLayer: Int = 0) -> VkImageSubresource {

        VkImageSubresource(
                aspectMask: aspectMask.rawValue,
                mipLevel: UInt32(mipLevel),
                arrayLayer: UInt32(arrayLayer))
    }

    static func Offset3D(
            x: Int = 0,
            y: Int = 0,
            z: Int = 0) -> VkOffset3D {

        VkOffset3D(
                x: Int32(x),
                y: Int32(y),
                z: Int32(z))
    }

    static func Offset3D(offset: ivec3) -> VkOffset3D {

        VkOffset3D(
                x: offset.x,
                y: offset.y,
                z: offset.z)
    }

    static func SparseImageMemoryBind(
            subresource: VkImageSubresource,
            offset: VkOffset3D = VkOffset3D(),
            extent: VkExtent3D = VkExtent3D(),
            memory: VkDeviceMemory,
            memoryOffset: VkDeviceSize = 0,
            flags: SparseMemoryBind = []) -> VkSparseImageMemoryBind {

        VkSparseImageMemoryBind(
                subresource: subresource,
                offset: offset,
                extent: extent,
                memory: memory,
                memoryOffset: memoryOffset,
                flags: flags.rawValue)
    }

    static func SparseImageMemoryBindInfo(
            image: VkImage,
            binds: [VkSparseImageMemoryBind]) -> VkSparseImageMemoryBindInfo {

        VkSparseImageMemoryBindInfo(
                image: image,
                bindCount: UInt32(binds.count),
                pBinds: binds)
    }

//    static func BindSparseInfo( TODO
//            next: UnsafeRawPointer? = nil,
//            waitSemaphores: [VkSemaphore?]? = nil,
//            bufferBinds: [VkSparseBufferMemoryBindInfo?]? = nil,
//            imageOpaqueBinds: [VkSparseImageOpaqueMemoryBindInfo?]? = nil,
//            imageBinds: [VkSparseImageMemoryBindInfo?]? = nil,
//            signalSemaphores: [VkSemaphore?]? = nil) -> VkBindSparseInfo {
//
//        var pWaitSemaphores: UnsafePointer<VkSemaphore?>?
//        if let waitSemaphores = waitSemaphores {
//            pWaitSemaphores = UnsafePointer(waitSemaphores)
//        }
//        var pBufferBinds: UnsafePointer<VkSparseBufferMemoryBindInfo?>?
//        if let bufferBinds = bufferBinds {
//            pBufferBinds = UnsafePointer(bufferBinds)
//        }
//        var pImageOpaqueBinds: UnsafePointer<VkSparseImageOpaqueMemoryBindInfo?>?
//        if let imageOpaqueBinds = imageOpaqueBinds {
//            pImageOpaqueBinds = UnsafePointer(imageOpaqueBinds)
//        }
//        var pImageBinds: UnsafePointer<VkSparseImageMemoryBindInfo?>?
//        if let imageBinds = imageBinds {
//            pImageBinds = UnsafePointer(imageBinds)
//        }
//        var pSignalSemaphores: UnsafePointer<VkSemaphore?>?
//        if let signalSemaphores = signalSemaphores {
//            pSignalSemaphores = UnsafePointer(signalSemaphores)
//        }
//        defer {
//            pWaitSemaphores?.deallocate()
//            pBufferBinds?.deallocate()
//            pImageOpaqueBinds?.deallocate()
//            pImageBinds?.deallocate()
//            pSignalSemaphores?.deallocate()
//        }
//
//        return VkBindSparseInfo(
//                sType: VK_STRUCTURE_TYPE_BIND_SPARSE_INFO,
//                pNext: next,
//                waitSemaphoreCount: UInt32(waitSemaphores?.count ?? 0),
//                pWaitSemaphores: pWaitSemaphores,
//                bufferBindCount: UInt32(bufferBinds?.count ?? 0),
//                pBufferBinds: pBufferBinds,
//                imageOpaqueBindCount: UInt32(imageOpaqueBinds?.count ?? 0),
//                pImageOpaqueBinds: pImageOpaqueBinds,
//                imageBindCount: UInt32(imageBinds?.count ?? 0),
//                pImageBinds: pImageBinds,
//                signalSemaphoreCount: UInt32(signalSemaphores?.count ?? 0),
//                pSignalSemaphores: pSignalSemaphores)
//    }

    static func FenceCreateInfo(
            next: UnsafeRawPointer? = nil,
            flags: FenceCreate = []) -> VkFenceCreateInfo {

        VkFenceCreateInfo(
                sType: VK_STRUCTURE_TYPE_FENCE_CREATE_INFO,
                pNext: next,
                flags: flags.rawValue)
    }

    static func SemaphoreCreateInfo(next: UnsafeRawPointer? = nil) -> VkSemaphoreCreateInfo {

        VkSemaphoreCreateInfo(
                sType: VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO,
                pNext: next,
                flags: UInt32(0))
    }

    static func EventCreateInfo() -> VkEventCreateInfo {

        VkEventCreateInfo(
                sType: VK_STRUCTURE_TYPE_EVENT_CREATE_INFO,
                pNext: nil,
                flags: UInt32(0))
    }

    static func QueryPoolCreateInfo(
            queryType: QueryType,
            queryCount: Int = 0,
            pipelineStatistics: QueryPipelineStatistic = []) -> VkQueryPoolCreateInfo {

        VkQueryPoolCreateInfo(
                sType: VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO,
                pNext: nil,
                flags: UInt32(0),
                queryType: queryType.value,
                queryCount: UInt32(queryCount),
                pipelineStatistics: pipelineStatistics.rawValue)
    }

    static func BufferCreateInfo(
            next: UnsafeRawPointer? = nil,
            flags: BufferCreate = [],
            size: VkDeviceSize = 0,
            usage: BufferUsage,
            sharingMode: SharingMode,
            queueFamilyIndices: [UInt32]? = nil) -> VkBufferCreateInfo {

        VkBufferCreateInfo(
                sType: VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO,
                pNext: next,
                flags: flags.rawValue,
                size: size,
                usage: usage.rawValue,
                sharingMode: sharingMode.value,
                queueFamilyIndexCount: UInt32(queueFamilyIndices?.count ?? 0),
                pQueueFamilyIndices: queueFamilyIndices)
    }

    static func BufferViewCreateInfo(
            buffer: VkBuffer,
            format: Format,
            offset: VkDeviceSize = 0,
            range: VkDeviceSize = 0) -> VkBufferViewCreateInfo {

        VkBufferViewCreateInfo(
                sType: VK_STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO,
                pNext: nil,
                flags: UInt32(0),
                buffer: buffer,
                format: format.value,
                offset: offset,
                range: range)
    }

    static func ImageCreateInfo(
            next: UnsafeRawPointer? = nil,
            flags: ImageCreate,
            imageType: ImageType,
            format: Format,
            extent: VkExtent3D = VkExtent3D(),
            mipLevels: Int = 0,
            arrayLayers: Int = 0,
            samples: VkSampleCountFlagBits,
            tiling: ImageTiling,
            usage: ImageUsage,
            sharingMode: SharingMode,
            queueFamilyIndices: [UInt32]? = nil,
            initialLayout: ImageLayout) -> VkImageCreateInfo {

        VkImageCreateInfo(
                sType: VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO,
                pNext: next,
                flags: flags.rawValue,
                imageType: imageType.value,
                format: format.value,
                extent: extent,
                mipLevels: UInt32(mipLevels),
                arrayLayers: UInt32(arrayLayers),
                samples: samples,
                tiling: tiling.value,
                usage: usage.rawValue,
                sharingMode: sharingMode.value,
                queueFamilyIndexCount: UInt32(queueFamilyIndices?.count ?? 0),
                pQueueFamilyIndices: queueFamilyIndices,
                initialLayout: initialLayout.value)
    }

    static func SubresourceLayout(
            offset: VkDeviceSize = 0,
            size: VkDeviceSize = 0,
            rowPitch: VkDeviceSize = 0,
            arrayPitch: VkDeviceSize = 0,
            depthPitch: VkDeviceSize = 0) -> VkSubresourceLayout {

        VkSubresourceLayout(
                offset: offset,
                size: size,
                rowPitch: rowPitch,
                arrayPitch: arrayPitch,
                depthPitch: depthPitch)
    }

    static func ComponentMapping(
            r: ComponentSwizzle,
            g: ComponentSwizzle,
            b: ComponentSwizzle,
            a: ComponentSwizzle) -> VkComponentMapping {

        VkComponentMapping(
                r: r.value,
                g: g.value,
                b: b.value,
                a: a.value)
    }

    static func ImageSubresourceRange(
            aspectMask: ImageAspect,
            baseMipLevel: Int = 0,
            levelCount: Int = 0,
            baseArrayLayer: Int = 0,
            layerCount: Int = 0) -> VkImageSubresourceRange {

        VkImageSubresourceRange(
                aspectMask: aspectMask.rawValue,
                baseMipLevel: UInt32(baseMipLevel),
                levelCount: UInt32(levelCount),
                baseArrayLayer: UInt32(baseArrayLayer),
                layerCount: UInt32(layerCount))
    }

    static func ImageViewCreateInfo(
            next: UnsafeRawPointer? = nil,
            flags: ImageViewCreate,
            image: VkImage,
            viewType: VkImageViewType,
            format: VkFormat,
            components: VkComponentMapping,
            subresourceRange: VkImageSubresourceRange) -> VkImageViewCreateInfo {

        VkImageViewCreateInfo(
                sType: VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO,
                pNext: next,
                flags: flags.rawValue,
                image: image,
                viewType: viewType,
                format: format,
                components: components,
                subresourceRange: subresourceRange)
    }

    static func ShaderModuleCreateInfo(
            next: UnsafeRawPointer? = nil,
            flags: ShaderModuleCreate,
            codeSize: Int = 0,
            code: [UInt32]) -> VkShaderModuleCreateInfo {

        VkShaderModuleCreateInfo(
                sType: VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO,
                pNext: next,
                flags: flags,
                codeSize: codeSize,
                pCode: code)
    }

    static func PipelineCacheCreateInfo(
            initialDataSize: Int = 0,
            initialData: UnsafeRawPointer? = nil) -> VkPipelineCacheCreateInfo {

        VkPipelineCacheCreateInfo(
                sType: VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO,
                pNext: nil,
                flags: UInt32(0),
                initialDataSize: initialDataSize,
                pInitialData: initialData)
    }

    static func SpecializationMapEntry(
            constantID: Int = 0,
            offset: Int = 0,
            size: Int = 0) -> VkSpecializationMapEntry {

        VkSpecializationMapEntry(
                constantID: UInt32(constantID),
                offset: UInt32(offset),
                size: size)
    }

    static func SpecializationInfo(
            mapEntries: [VkSpecializationMapEntry]? = nil,
            dataSize: Int = 0,
            data: UnsafeRawPointer? = nil) -> VkSpecializationInfo {

        VkSpecializationInfo(
                mapEntryCount: UInt32(mapEntries?.count ?? 0),
                pMapEntries: mapEntries ?? nil,
                dataSize: dataSize,
                pData: data)
    }

    static func PipelineShaderStageCreateInfo(
            next: UnsafeRawPointer? = nil,
            flags: PipelineShaderStageCreate,
            stage: VkShaderStageFlagBits,
            module: VkShaderModule,
            name: String,
            specializationInfo: VkSpecializationInfo? = nil) -> VkPipelineShaderStageCreateInfo {

        if var specializationInfo = specializationInfo {
            return VkPipelineShaderStageCreateInfo(
                    sType: VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO,
                    pNext: next,
                    flags: flags,
                    stage: stage,
                    module: module,
                    pName: name,
                    pSpecializationInfo: &specializationInfo)
        }
        return VkPipelineShaderStageCreateInfo(
                sType: VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO,
                pNext: next,
                flags: flags,
                stage: stage,
                module: module,
                pName: name,
                pSpecializationInfo: nil)
    }

    static func VertexInputBindingDescription(
            binding: Int = 0,
            stride: Int = 0,
            inputRate: VertexInputRate) -> VkVertexInputBindingDescription {

        VkVertexInputBindingDescription(
                binding: UInt32(binding),
                stride: UInt32(stride),
                inputRate: inputRate.value)
    }

    static func VertexInputAttributeDescription(
            location: Int = 0,
            binding: Int = 0,
            format: Format,
            offset: Int = 0) -> VkVertexInputAttributeDescription {

        VkVertexInputAttributeDescription(
                location: UInt32(location),
                binding: UInt32(binding),
                format: format.value,
                offset: UInt32(offset))
    }

    static func PipelineVertexInputStateCreateInfo(
            next: UnsafeRawPointer? = nil,
            vertexBindingDescriptions: [VkVertexInputBindingDescription]? = nil,
            vertexAttributeDescriptions: [VkVertexInputAttributeDescription]? = nil) -> VkPipelineVertexInputStateCreateInfo {

        VkPipelineVertexInputStateCreateInfo(
                sType: VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO,
                pNext: next,
                flags: UInt32(0),
                vertexBindingDescriptionCount: UInt32(vertexBindingDescriptions?.count ?? 0),
                pVertexBindingDescriptions: vertexBindingDescriptions ?? nil,
                vertexAttributeDescriptionCount: UInt32(vertexAttributeDescriptions?.count ?? 0),
                pVertexAttributeDescriptions: vertexAttributeDescriptions ?? nil)
    }

    static func PipelineInputAssemblyStateCreateInfo(
            topology: PrimitiveTopology = .triangleList,
            primitiveRestartEnable: Bool = false) -> VkPipelineInputAssemblyStateCreateInfo {

        VkPipelineInputAssemblyStateCreateInfo(
                sType: VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO,
                pNext: nil,
                flags: UInt32(0),
                topology: topology.value,
                primitiveRestartEnable: UInt32(primitiveRestartEnable))
    }

    static func PipelineTessellationStateCreateInfo(
            next: UnsafeRawPointer? = nil,
            patchControlPoints: Int = 0) -> VkPipelineTessellationStateCreateInfo {

        VkPipelineTessellationStateCreateInfo(
                sType: VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO,
                pNext: next,
                flags: UInt32(0),
                patchControlPoints: UInt32(patchControlPoints))
    }

    static func Viewport(
            x: Float = 0,
            y: Float = 0,
            width: Float,
            height: Float,
            minDepth: Float = 0,
            maxDepth: Float = 1) -> VkViewport {

        VkViewport(
                x: x,
                y: y,
                width: width,
                height: height,
                minDepth: minDepth,
                maxDepth: maxDepth)
    }

    static func Viewport(
            x: Float = 0,
            y: Float = 0,
            size: vec2,
            minDepth: Float = 0,
            maxDepth: Float = 1) -> VkViewport {

        VkViewport(
                x: x,
                y: y,
                width: size.x,
                height: size.y,
                minDepth: minDepth,
                maxDepth: maxDepth)
    }

    static func Offset2D(
            _ x: Int = 0,
            _ y: Int = 0) -> VkOffset2D {

        VkOffset2D(
                x: Int32(x),
                y: Int32(y))
    }

    static func Offset2D(_ offset: ivec2) -> VkOffset2D {

        VkOffset2D(
                x: offset.x,
                y: offset.y)
    }

    static func Extent2D(
            _ width: Int = 0,
            _ height: Int = 0) -> VkExtent2D {

        VkExtent2D(
                width: UInt32(width),
                height: UInt32(height))
    }

    static func Extent2D(_ extent: uvec2) -> VkExtent2D {

        VkExtent2D(
                width: extent.x,
                height: extent.y)
    }

    static func Extent2D(_ extent: ivec2) -> VkExtent2D {

        VkExtent2D(
                width: UInt32(extent.x),
                height: UInt32(extent.y))
    }

    static func Rect2D(
            _ offset: VkOffset2D,
            _ extent: VkExtent2D) -> VkRect2D {

        VkRect2D(
                offset: offset,
                extent: extent)
    }

    static func Rect2D(
            _ offset: ivec2,
            _ extent: uvec2) -> VkRect2D {

        VkRect2D(
                offset: Offset2D(offset),
                extent: Extent2D(extent))
    }

    static func PipelineViewportStateCreateInfo(
            next: UnsafeRawPointer? = nil,
            viewports: [VkViewport],
            scissors: [VkRect2D]) -> VkPipelineViewportStateCreateInfo {

        VkPipelineViewportStateCreateInfo(
                sType: VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO,
                pNext: next,
                flags: UInt32(0),
                viewportCount: UInt32(viewports.count),
                pViewports: viewports,
                scissorCount: UInt32(scissors.count),
                pScissors: scissors)
    }

    static func PipelineRasterizationStateCreateInfo(
            next: UnsafeRawPointer? = nil,
            depthClampEnable: Bool = false,
            rasterizerDiscardEnable: Bool = false,
            polygonMode: PolygonMode,
            cullMode: CullMode,
            frontFace: FrontFace,
            depthBiasEnable: Bool = false,
            depthBiasConstantFactor: Float = 0,
            depthBiasClamp: Float = 0,
            depthBiasSlopeFactor: Float = 0,
            lineWidth: Float = 0) -> VkPipelineRasterizationStateCreateInfo {

        VkPipelineRasterizationStateCreateInfo(
                sType: VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO,
                pNext: next,
                flags: UInt32(0),
                depthClampEnable: UInt32(depthClampEnable),
                rasterizerDiscardEnable: UInt32(rasterizerDiscardEnable),
                polygonMode: polygonMode.value,
                cullMode: cullMode.rawValue,
                frontFace: frontFace.value,
                depthBiasEnable: UInt32(depthBiasEnable),
                depthBiasConstantFactor: depthBiasConstantFactor,
                depthBiasClamp: depthBiasClamp,
                depthBiasSlopeFactor: depthBiasSlopeFactor,
                lineWidth: lineWidth)
    }

    static func PipelineMultisampleStateCreateInfo(
            next: UnsafeRawPointer? = nil,
            rasterizationSamples: VkSampleCountFlagBits,
            sampleShadingEnable: Bool,
            minSampleShading: Float,
            sampleMask: [VkSampleMask],
            alphaToCoverageEnable: Bool,
            alphaToOneEnable: Bool) -> VkPipelineMultisampleStateCreateInfo {

        VkPipelineMultisampleStateCreateInfo(
                sType: VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO,
                pNext: next,
                flags: UInt32(0),
                rasterizationSamples: rasterizationSamples,
                sampleShadingEnable: UInt32(sampleShadingEnable),
                minSampleShading: minSampleShading,
                pSampleMask: sampleMask,
                alphaToCoverageEnable: UInt32(alphaToCoverageEnable),
                alphaToOneEnable: UInt32(alphaToOneEnable))
    }

    static func StencilOpState(
            failOp: StencilOp,
            passOp: StencilOp,
            depthFailOp: StencilOp,
            compareOp: CompareOp,
            compareMask: Int,
            writeMask: Int,
            reference: Int) -> VkStencilOpState {

        VkStencilOpState(
                failOp: failOp.value,
                passOp: passOp.value,
                depthFailOp: depthFailOp.value,
                compareOp: compareOp.value,
                compareMask: UInt32(compareMask),
                writeMask: UInt32(writeMask),
                reference: UInt32(reference))
    }

    static func PipelineDepthStencilStateCreateInfo(
            depthTestEnable: Bool,
            depthWriteEnable: Bool,
            depthCompareOp: CompareOp,
            depthBoundsTestEnable: Bool,
            stencilTestEnable: Bool,
            front: VkStencilOpState,
            back: VkStencilOpState,
            minDepthBounds: Float,
            maxDepthBounds: Float) -> VkPipelineDepthStencilStateCreateInfo {

        VkPipelineDepthStencilStateCreateInfo(
                sType: VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO,
                pNext: nil,
                flags: UInt32(0),
                depthTestEnable: UInt32(depthTestEnable),
                depthWriteEnable: UInt32(depthWriteEnable),
                depthCompareOp: depthCompareOp.value,
                depthBoundsTestEnable: UInt32(depthBoundsTestEnable),
                stencilTestEnable: UInt32(stencilTestEnable),
                front: front,
                back: back,
                minDepthBounds: minDepthBounds,
                maxDepthBounds: maxDepthBounds)
    }

    static func PipelineColorBlendAttachmentState(
            blendEnable: Bool,
            srcColorBlendFactor: BlendFactor,
            dstColorBlendFactor: BlendFactor,
            colorBlendOp: BlendOp,
            srcAlphaBlendFactor: BlendFactor,
            dstAlphaBlendFactor: BlendFactor,
            alphaBlendOp: BlendOp,
            colorWriteMask: ColorComponent) -> VkPipelineColorBlendAttachmentState {

        VkPipelineColorBlendAttachmentState(
                blendEnable: UInt32(blendEnable),
                srcColorBlendFactor: srcColorBlendFactor.value,
                dstColorBlendFactor: dstColorBlendFactor.value,
                colorBlendOp: colorBlendOp.value,
                srcAlphaBlendFactor: srcAlphaBlendFactor.value,
                dstAlphaBlendFactor: dstAlphaBlendFactor.value,
                alphaBlendOp: alphaBlendOp.value,
                colorWriteMask: colorWriteMask.rawValue)
    }

    static func PipelineColorBlendStateCreateInfo(
            logicOpEnable: Bool,
            logicOp: LogicOp,
            attachments: [VkPipelineColorBlendAttachmentState],
            blendConstants: (Float, Float, Float, Float)) -> VkPipelineColorBlendStateCreateInfo {

        VkPipelineColorBlendStateCreateInfo(
                sType: VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO,
                pNext: nil,
                flags: UInt32(0),
                logicOpEnable: UInt32(logicOpEnable),
                logicOp: logicOp.value,
                attachmentCount: UInt32(attachments.count),
                pAttachments: attachments,
                blendConstants: blendConstants)
    }

    static func PipelineDynamicStateCreateInfo(dynamicStates: [VkDynamicState]) -> VkPipelineDynamicStateCreateInfo {

        VkPipelineDynamicStateCreateInfo(
                sType: VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO,
                pNext: nil,
                flags: UInt32(0),
                dynamicStateCount: UInt32(dynamicStates.count),
                pDynamicStates: dynamicStates)
    }

    static func GraphicsPipelineCreateInfo(
            next: UnsafeRawPointer? = nil,
            flags: PipelineCreate,
            stageCount: Int,
            stages: [VkPipelineShaderStageCreateInfo],
            vertexInputState: [VkPipelineVertexInputStateCreateInfo],
            inputAssemblyState: [VkPipelineInputAssemblyStateCreateInfo],
            tessellationState: [VkPipelineTessellationStateCreateInfo],
            viewportState: [VkPipelineViewportStateCreateInfo],
            rasterizationState: [VkPipelineRasterizationStateCreateInfo],
            multisampleState: [VkPipelineMultisampleStateCreateInfo],
            depthStencilState: [VkPipelineDepthStencilStateCreateInfo],
            colorBlendState: [VkPipelineColorBlendStateCreateInfo],
            dynamicState: [VkPipelineDynamicStateCreateInfo],
            layout: VkPipelineLayout,
            renderPass: VkRenderPass,
            subpass: Int,
            basePipelineHandle: VkPipeline,
            basePipelineIndex: Int) -> VkGraphicsPipelineCreateInfo {

        VkGraphicsPipelineCreateInfo(
                sType: VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO,
                pNext: next,
                flags: flags.rawValue,
                stageCount: UInt32(stageCount),
                pStages: stages,
                pVertexInputState: vertexInputState,
                pInputAssemblyState: inputAssemblyState,
                pTessellationState: tessellationState,
                pViewportState: viewportState,
                pRasterizationState: rasterizationState,
                pMultisampleState: multisampleState,
                pDepthStencilState: depthStencilState,
                pColorBlendState: colorBlendState,
                pDynamicState: dynamicState,
                layout: layout,
                renderPass: renderPass,
                subpass: UInt32(subpass),
                basePipelineHandle: basePipelineHandle,
                basePipelineIndex: Int32(basePipelineIndex))
    }

    static func ComputePipelineCreateInfo(
            next: UnsafeRawPointer? = nil,
            flags: PipelineCreate,
            stage: VkPipelineShaderStageCreateInfo,
            layout: VkPipelineLayout,
            basePipelineHandle: VkPipeline,
            basePipelineIndex: Int) -> VkComputePipelineCreateInfo {

        VkComputePipelineCreateInfo(
                sType: VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO,
                pNext: next,
                flags: flags.rawValue,
                stage: stage,
                layout: layout,
                basePipelineHandle: basePipelineHandle,
                basePipelineIndex: Int32(basePipelineIndex))
    }

    static func PushConstantRange(
            stageFlags: ShaderStage,
            offset: Int = 0,
            size: Int = 0) -> VkPushConstantRange {

        VkPushConstantRange(
                stageFlags: stageFlags.rawValue,
                offset: UInt32(offset),
                size: UInt32(size))
    }

    static func PipelineLayoutCreateInfo(
            setLayouts: [VkDescriptorSetLayout?]?,
            pushConstantRanges: [VkPushConstantRange]?) -> VkPipelineLayoutCreateInfo {

        VkPipelineLayoutCreateInfo(
                sType: VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO,
                pNext: nil,
                flags: UInt32(0),
                setLayoutCount: UInt32(setLayouts?.count ?? 0),
                pSetLayouts: setLayouts ?? nil,
                pushConstantRangeCount: UInt32(pushConstantRanges?.count ?? 0),
                pPushConstantRanges: pushConstantRanges ?? nil)
    }

    static func SamplerCreateInfo(
            next: UnsafeRawPointer? = nil,
            flags: SamplerCreate,
            magFilter: Filter,
            minFilter: Filter,
            mipmapMode: SamplerMipmapMode,
            addressModeU: SamplerAddressMode,
            addressModeV: SamplerAddressMode,
            addressModeW: SamplerAddressMode,
            mipLodBias: Float,
            anisotropyEnable: Bool,
            maxAnisotropy: Float,
            compareEnable: Bool,
            compareOp: CompareOp,
            minLod: Float,
            maxLod: Float,
            borderColor: BorderColor,
            unnormalizedCoordinates: Bool) -> VkSamplerCreateInfo {

        VkSamplerCreateInfo(
                sType: VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO,
                pNext: next,
                flags: flags.rawValue,
                magFilter: magFilter.value,
                minFilter: minFilter.value,
                mipmapMode: mipmapMode.value,
                addressModeU: addressModeU.value,
                addressModeV: addressModeV.value,
                addressModeW: addressModeW.value,
                mipLodBias: mipLodBias,
                anisotropyEnable: UInt32(anisotropyEnable),
                maxAnisotropy: maxAnisotropy,
                compareEnable: UInt32(compareEnable),
                compareOp: compareOp.value,
                minLod: minLod,
                maxLod: maxLod,
                borderColor: borderColor.value,
                unnormalizedCoordinates: UInt32(unnormalizedCoordinates))
    }

    static func DescriptorSetLayoutBinding(
            binding: Int,
            descriptorType: DescriptorType,
            descriptorCount: Int,
            stageFlags: ShaderStage,
            immutableSamplers: [VkSampler?]? = nil) -> VkDescriptorSetLayoutBinding {

        VkDescriptorSetLayoutBinding(
                binding: UInt32(binding),
                descriptorType: descriptorType.value,
                descriptorCount: UInt32(descriptorCount),
                stageFlags: stageFlags.rawValue,
                pImmutableSamplers: immutableSamplers)
    }

    static func DescriptorSetLayoutCreateInfo(
            next: UnsafeRawPointer? = nil,
            flags: DescriptorSetLayoutCreate,
            bindings: [VkDescriptorSetLayoutBinding]) -> VkDescriptorSetLayoutCreateInfo {

        VkDescriptorSetLayoutCreateInfo(
                sType: VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO,
                pNext: next,
                flags: flags.rawValue,
                bindingCount: UInt32(bindings.count),
                pBindings: bindings)
    }

    static func DescriptorPoolSize(
            type: DescriptorType,
            descriptorCount: Int) -> VkDescriptorPoolSize {

        VkDescriptorPoolSize(
                type: type.value,
                descriptorCount: UInt32(descriptorCount))
    }

    static func DescriptorPoolCreateInfo(
            next: UnsafeRawPointer? = nil,
            flags: DescriptorPoolCreate,
            maxSets: Int,
            poolSizes: [VkDescriptorPoolSize]) -> VkDescriptorPoolCreateInfo {

        VkDescriptorPoolCreateInfo(
                sType: VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO,
                pNext: next,
                flags: flags.rawValue,
                maxSets: UInt32(maxSets),
                poolSizeCount: UInt32(poolSizes.count),
                pPoolSizes: poolSizes)
    }

    static func DescriptorSetAllocateInfo(
            next: UnsafeRawPointer? = nil,
            descriptorPool: VkDescriptorPool,
            setLayouts: [VkDescriptorSetLayout?]?) -> VkDescriptorSetAllocateInfo {

        VkDescriptorSetAllocateInfo(
                sType: VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO,
                pNext: next,
                descriptorPool: descriptorPool,
                descriptorSetCount: UInt32(setLayouts?.count ?? 0),
                pSetLayouts: setLayouts)
    }

    static func DescriptorImageInfo(
            sampler: VkSampler,
            imageView: VkImageView,
            imageLayout: VkImageLayout) -> VkDescriptorImageInfo {

        VkDescriptorImageInfo(
                sampler: sampler,
                imageView: imageView,
                imageLayout: imageLayout)
    }

    static func DescriptorBufferInfo(
            buffer: VkBuffer,
            offset: VkDeviceSize,
            range: VkDeviceSize) -> VkDescriptorBufferInfo {

        VkDescriptorBufferInfo(
                buffer: buffer,
                offset: offset,
                range: range)
    }

    static func WriteDescriptorSet(
            next: UnsafeRawPointer? = nil,
            dstSet: VkDescriptorSet,
            dstBinding: Int,
            dstArrayElement: Int,
            descriptorCount: Int,
            descriptorType: VkDescriptorType,
            imageInfo: [VkDescriptorImageInfo],
            bufferInfo: [VkDescriptorBufferInfo],
            texelBufferView: [VkBufferView?]) -> VkWriteDescriptorSet {

        VkWriteDescriptorSet(
                sType: VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET,
                pNext: next,
                dstSet: dstSet,
                dstBinding: UInt32(dstBinding),
                dstArrayElement: UInt32(dstArrayElement),
                descriptorCount: UInt32(descriptorCount),
                descriptorType: descriptorType,
                pImageInfo: imageInfo,
                pBufferInfo: bufferInfo,
                pTexelBufferView: texelBufferView)
    }

    static func CopyDescriptorSet(
            srcSet: VkDescriptorSet,
            srcBinding: Int,
            srcArrayElement: Int,
            dstSet: VkDescriptorSet,
            dstBinding: Int,
            dstArrayElement: Int,
            descriptorCount: Int) -> VkCopyDescriptorSet {

        VkCopyDescriptorSet(
                sType: VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET,
                pNext: nil,
                srcSet: srcSet,
                srcBinding: UInt32(srcBinding),
                srcArrayElement: UInt32(srcArrayElement),
                dstSet: dstSet,
                dstBinding: UInt32(dstBinding),
                dstArrayElement: UInt32(dstArrayElement),
                descriptorCount: UInt32(descriptorCount))
    }

    static func FramebufferCreateInfo(
            next: UnsafeRawPointer? = nil,
            flags: FramebufferCreate,
            renderPass: VkRenderPass,
            attachments: [VkImageView?],
            width: Int,
            height: Int,
            layers: Int) -> VkFramebufferCreateInfo {

        VkFramebufferCreateInfo(
                sType: VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO,
                pNext: next,
                flags: flags.rawValue,
                renderPass: renderPass,
                attachmentCount: UInt32(attachments.count),
                pAttachments: attachments,
                width: UInt32(width),
                height: UInt32(height),
                layers: UInt32(layers))
    }

    static func AttachmentDescription(
            flags: AttachmentDescription,
            format: VkFormat,
            samples: VkSampleCountFlagBits,
            loadOp: AttachmentLoadOp,
            storeOp: AttachmentStoreOp,
            stencilLoadOp: AttachmentLoadOp,
            stencilStoreOp: AttachmentStoreOp,
            initialLayout: VkImageLayout,
            finalLayout: VkImageLayout) -> VkAttachmentDescription {

        VkAttachmentDescription(
                flags: flags.rawValue,
                format: format,
                samples: samples,
                loadOp: loadOp.value,
                storeOp: storeOp.value,
                stencilLoadOp: stencilLoadOp.value,
                stencilStoreOp: stencilStoreOp.value,
                initialLayout: initialLayout,
                finalLayout: finalLayout)
    }

    static func AttachmentReference(
            attachment: Int,
            layout: VkImageLayout) -> VkAttachmentReference {

        VkAttachmentReference(
                attachment: UInt32(attachment),
                layout: layout)
    }

    static func SubpassDescription(
            flags: SubpassDescription,
            pipelineBindPoint: PipelineBindPoint,
            inputAttachments: [VkAttachmentReference],
            colorAttachmentCount: Int = 0,
            colorAttachments: [VkAttachmentReference]? = nil,
            resolveAttachments: [VkAttachmentReference]? = nil,
            depthStencilAttachment: UnsafePointer<VkAttachmentReference>? = nil,
            preserveAttachments: [UInt32]? = nil) -> VkSubpassDescription {

        VkSubpassDescription(
                flags: flags.rawValue,
                pipelineBindPoint: pipelineBindPoint.value,
                inputAttachmentCount: UInt32(inputAttachments.count),
                pInputAttachments: inputAttachments,
                colorAttachmentCount: UInt32(colorAttachmentCount),
                pColorAttachments: colorAttachments ?? nil,
                pResolveAttachments: resolveAttachments ?? nil,
                pDepthStencilAttachment: depthStencilAttachment,
                preserveAttachmentCount: UInt32(preserveAttachments?.count ?? 0),
                pPreserveAttachments: preserveAttachments ?? nil)
    }

    static func SubpassDependency(
            srcSubpass: Int,
            dstSubpass: Int,
            srcStageMask: PipelineStage,
            dstStageMask: PipelineStage,
            srcAccessMask: Access,
            dstAccessMask: Access,
            dependencyFlags: Dependency) -> VkSubpassDependency {

        VkSubpassDependency(
                srcSubpass: UInt32(srcSubpass),
                dstSubpass: UInt32(dstSubpass),
                srcStageMask: srcStageMask.rawValue,
                dstStageMask: dstStageMask.rawValue,
                srcAccessMask: srcAccessMask.rawValue,
                dstAccessMask: dstAccessMask.rawValue,
                dependencyFlags: dependencyFlags.rawValue)
    }

    static func RenderPassCreateInfo(
            next: UnsafeRawPointer? = nil,
            attachments: [VkAttachmentDescription]? = nil,
            subpasses: [VkSubpassDescription]? = nil,
            dependencies: [VkSubpassDependency]? = nil) -> VkRenderPassCreateInfo {

        VkRenderPassCreateInfo(
                sType: VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO,
                pNext: next,
                flags: UInt32(0),
                attachmentCount: UInt32(attachments?.count ?? 0),
                pAttachments: attachments ?? nil,
                subpassCount: UInt32(subpasses?.count ?? 0),
                pSubpasses: subpasses ?? nil,
                dependencyCount: UInt32(dependencies?.count ?? 0),
                pDependencies: dependencies ?? nil)
    }

    static func CommandPoolCreateInfo(
            flags: CommandPoolCreate = [],
            queueFamilyIndex: Int = 0) -> VkCommandPoolCreateInfo {

        VkCommandPoolCreateInfo(
                sType: VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO,
                pNext: nil,
                flags: flags.rawValue,
                queueFamilyIndex: UInt32(queueFamilyIndex)
        )
    }

    static func CommandBufferAllocateInfo(
            commandPool: VkCommandPool,
            level: CommandBufferLevel,
            commandBufferCount: Int) -> VkCommandBufferAllocateInfo {

        VkCommandBufferAllocateInfo(
                sType: VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
                pNext: nil,
                commandPool: commandPool,
                level: level.value,
                commandBufferCount: UInt32(commandBufferCount))
    }

    static func CommandBufferInheritanceInfo(
            next: UnsafeRawPointer? = nil,
            renderPass: VkRenderPass,
            subpass: Int,
            framebuffer: VkFramebuffer,
            occlusionQueryEnable: Bool,
            queryFlags: VkQueryControlFlags,
            pipelineStatistics: QueryPipelineStatistic) -> VkCommandBufferInheritanceInfo {

        VkCommandBufferInheritanceInfo(
                sType: VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO,
                pNext: next,
                renderPass: renderPass,
                subpass: UInt32(subpass),
                framebuffer: framebuffer,
                occlusionQueryEnable: UInt32(occlusionQueryEnable),
                queryFlags: queryFlags,
                pipelineStatistics: pipelineStatistics.rawValue)
    }

    static func CommandBufferBeginInfo(
            next: UnsafeRawPointer? = nil,
            flags: CommandBufferUsage,
            inheritanceInfo: UnsafePointer<VkCommandBufferInheritanceInfo>?) -> VkCommandBufferBeginInfo {

        VkCommandBufferBeginInfo(
                sType: VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO,
                pNext: next,
                flags: flags.rawValue,
                pInheritanceInfo: inheritanceInfo ?? nil)
    }

    static func BufferCopy(
            srcOffset: VkDeviceSize,
            dstOffset: VkDeviceSize,
            size: VkDeviceSize) -> VkBufferCopy {

        VkBufferCopy(
                srcOffset: srcOffset,
                dstOffset: dstOffset,
                size: size)
    }

    static func ImageSubresourceLayers(
            aspectMask: ImageAspect,
            mipLevel: Int,
            baseArrayLayer: Int,
            layerCount: Int) -> VkImageSubresourceLayers {

        VkImageSubresourceLayers(
                aspectMask: aspectMask.rawValue,
                mipLevel: UInt32(mipLevel),
                baseArrayLayer: UInt32(baseArrayLayer),
                layerCount: UInt32(layerCount))
    }

    static func ImageCopy(
            srcSubresource: VkImageSubresourceLayers,
            srcOffset: VkOffset3D,
            dstSubresource: VkImageSubresourceLayers,
            dstOffset: VkOffset3D,
            extent: VkExtent3D) -> VkImageCopy {

        VkImageCopy(
                srcSubresource: srcSubresource,
                srcOffset: srcOffset,
                dstSubresource: dstSubresource,
                dstOffset: dstOffset,
                extent: extent)
    }

    static func ImageBlit(
            srcSubresource: VkImageSubresourceLayers,
            srcOffsets: (VkOffset3D, VkOffset3D),
            dstSubresource: VkImageSubresourceLayers,
            dstOffsets: (VkOffset3D, VkOffset3D)) -> VkImageBlit {

        VkImageBlit(
                srcSubresource: srcSubresource,
                srcOffsets: srcOffsets,
                dstSubresource: dstSubresource,
                dstOffsets: dstOffsets)
    }

    static func BufferImageCopy(
            bufferOffset: VkDeviceSize,
            bufferRowLength: Int,
            bufferImageHeight: Int,
            imageSubresource: VkImageSubresourceLayers,
            imageOffset: VkOffset3D,
            imageExtent: VkExtent3D) -> VkBufferImageCopy {

        VkBufferImageCopy(
                bufferOffset: bufferOffset,
                bufferRowLength: UInt32(bufferRowLength),
                bufferImageHeight: UInt32(bufferImageHeight),
                imageSubresource: imageSubresource,
                imageOffset: imageOffset,
                imageExtent: imageExtent)
    }

    static func ClearColorValue(float: (Float, Float, Float, Float)) -> VkClearColorValue {
        VkClearColorValue(float32: float)
    }

    static func ClearColorValue(int: (Int, Int, Int, Int)) -> VkClearColorValue {
        VkClearColorValue(int32: (Int32(int.0), Int32(int.1), Int32(int.2), Int32(int.3)))
    }

    static func ClearColorValue(int: (Int32, Int32, Int32, Int32)) -> VkClearColorValue {
        VkClearColorValue(int32: int)
    }

    static func ClearColorValue(uint: (UInt32, UInt32, UInt32, UInt32)) -> VkClearColorValue {
        VkClearColorValue(uint32: uint)
    }

    static func ClearDepthStencilValue(
            depth: Float,
            stencil: Int) -> VkClearDepthStencilValue {

        VkClearDepthStencilValue(
                depth: depth,
                stencil: UInt32(stencil))
    }

    static func ClearValue(color: VkClearColorValue) -> VkClearValue {
        VkClearValue(color: color)
    }

    static func ClearValue(depthStencil: VkClearDepthStencilValue) -> VkClearValue {
        VkClearValue(depthStencil: depthStencil)
    }

    static func ClearAttachment(
            aspectMask: ImageAspect,
            colorAttachment: Int,
            clearValue: VkClearValue) -> VkClearAttachment {

        VkClearAttachment(
                aspectMask: aspectMask.rawValue,
                colorAttachment: UInt32(colorAttachment),
                clearValue: clearValue)
    }

    static func ClearRect(
            rect: VkRect2D,
            baseArrayLayer: Int,
            layerCount: Int) -> VkClearRect {

        VkClearRect(
                rect: rect,
                baseArrayLayer: UInt32(baseArrayLayer),
                layerCount: UInt32(layerCount))
    }

    static func ImageResolve(
            srcSubresource: VkImageSubresourceLayers,
            srcOffset: VkOffset3D,
            dstSubresource: VkImageSubresourceLayers,
            dstOffset: VkOffset3D,
            extent: VkExtent3D) -> VkImageResolve {

        VkImageResolve(
                srcSubresource: srcSubresource,
                srcOffset: srcOffset,
                dstSubresource: dstSubresource,
                dstOffset: dstOffset,
                extent: extent)
    }

    static func MemoryBarrier(
            srcAccessMask: Access,
            dstAccessMask: Access) -> VkMemoryBarrier {

        VkMemoryBarrier(
                sType: VK_STRUCTURE_TYPE_MEMORY_BARRIER,
                pNext: nil,
                srcAccessMask: srcAccessMask.rawValue,
                dstAccessMask: dstAccessMask.rawValue)
    }

    static func BufferMemoryBarrier(
            srcAccessMask: Access,
            dstAccessMask: Access,
            srcQueueFamilyIndex: Int,
            dstQueueFamilyIndex: Int,
            buffer: VkBuffer,
            offset: VkDeviceSize,
            size: VkDeviceSize) -> VkBufferMemoryBarrier {

        VkBufferMemoryBarrier(
                sType: VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER,
                pNext: nil,
                srcAccessMask: srcAccessMask.rawValue,
                dstAccessMask: dstAccessMask.rawValue,
                srcQueueFamilyIndex: UInt32(srcQueueFamilyIndex),
                dstQueueFamilyIndex: UInt32(dstQueueFamilyIndex),
                buffer: buffer,
                offset: offset,
                size: size)
    }

    static func ImageMemoryBarrier(
            next: UnsafeRawPointer? = nil,
            srcAccessMask: Access,
            dstAccessMask: Access,
            oldLayout: VkImageLayout,
            newLayout: VkImageLayout,
            srcQueueFamilyIndex: Int,
            dstQueueFamilyIndex: Int,
            image: VkImage,
            subresourceRange: VkImageSubresourceRange) -> VkImageMemoryBarrier {

        VkImageMemoryBarrier(
                sType: VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER,
                pNext: next,
                srcAccessMask: srcAccessMask.rawValue,
                dstAccessMask: dstAccessMask.rawValue,
                oldLayout: oldLayout,
                newLayout: newLayout,
                srcQueueFamilyIndex: UInt32(srcQueueFamilyIndex),
                dstQueueFamilyIndex: UInt32(dstQueueFamilyIndex),
                image: image,
                subresourceRange: subresourceRange)
    }

    static func RenderPassBeginInfo(
            next: UnsafeRawPointer? = nil,
            renderPass: VkRenderPass,
            framebuffer: VkFramebuffer,
            renderArea: VkRect2D,
            clearValues: [VkClearValue]) -> VkRenderPassBeginInfo {

        VkRenderPassBeginInfo(
                sType: VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO,
                pNext: next,
                renderPass: renderPass,
                framebuffer: framebuffer,
                renderArea: renderArea,
                clearValueCount: UInt32(clearValues.count),
                pClearValues: clearValues)
    }

    static func DispatchIndirectCommand(
            x: Int,
            y: Int,
            z: Int) -> VkDispatchIndirectCommand {

        VkDispatchIndirectCommand(
                x: UInt32(x),
                y: UInt32(y),
                z: UInt32(z))
    }

    static func DispatchIndirectCommand(workgroupSize: ivec3) -> VkDispatchIndirectCommand {

        VkDispatchIndirectCommand(
                x: UInt32(workgroupSize.x),
                y: UInt32(workgroupSize.y),
                z: UInt32(workgroupSize.z))
    }

    static func DispatchIndirectCommand(workgroupSize: uvec3) -> VkDispatchIndirectCommand {

        VkDispatchIndirectCommand(
                x: workgroupSize.x,
                y: workgroupSize.y,
                z: workgroupSize.z)
    }

    static func DrawIndexedIndirectCommand(
            indexCount: Int,
            instanceCount: Int,
            firstIndex: Int,
            vertexOffset: Int,
            firstInstance: Int) -> VkDrawIndexedIndirectCommand {

        VkDrawIndexedIndirectCommand(
                indexCount: UInt32(indexCount),
                instanceCount: UInt32(instanceCount),
                firstIndex: UInt32(firstIndex),
                vertexOffset: Int32(vertexOffset),
                firstInstance: UInt32(firstInstance))
    }

    static func DrawIndirectCommand(
            vertexCount: Int,
            instanceCount: Int,
            firstVertex: Int,
            firstInstance: Int) -> VkDrawIndirectCommand {

        VkDrawIndirectCommand(
                vertexCount: UInt32(vertexCount),
                instanceCount: UInt32(instanceCount),
                firstVertex: UInt32(firstVertex),
                firstInstance: UInt32(firstInstance))
    }

    static func BaseOutStructure(
            type: VkStructureType,
            next: UnsafeMutablePointer<VkBaseOutStructure>?) -> VkBaseOutStructure {

        VkBaseOutStructure(
                sType: type,
                pNext: next ?? nil)
    }

    static func BaseInStructure(
            type: VkStructureType,
            next: UnsafeMutablePointer<VkBaseInStructure>?) -> VkBaseInStructure {

        VkBaseInStructure(
                sType: type,
                pNext: next ?? nil)
    }


    // =================================================================================================================


    static func createInstance(_ createInfo: UnsafePointer<VkInstanceCreateInfo>) -> (Result, VkInstance?) {
        var instance: VkInstance?
        return (Result(rawValue: vkCreateInstance(createInfo, nil, &instance).rawValue)!, instance)
    }

    static func createInstance(_ createInfo: UnsafePointer<VkInstanceCreateInfo>) throws -> VkInstance? {
        var instance: VkInstance?
        try CHECK(vkCreateInstance(createInfo, nil, &instance))
        return instance
    }

    static func createInstance(_ createInfo: UnsafePointer<VkInstanceCreateInfo>) -> VkInstance {
        var instance: VkInstance?
        CHECK_F(vkCreateInstance(createInfo, nil, &instance))
        return instance!
    }

    static func destroyInstance(instance: VkInstance) {
        vkDestroyInstance(instance, nil)
    }

//    static func enumeratePhysicalDevices(
//            instance: VkInstance,
//            uint32_t
//
//*                                   pPhysicalDeviceCount,
//VkPhysicalDevice*                           pPhysicalDevices);

//VKAPI_ATTR void VKAPI_CALL vkGetPhysicalDeviceFeatures(
//VkPhysicalDevice                            physicalDevice,
//VkPhysicalDeviceFeatures*                   pFeatures);
//
//VKAPI_ATTR void VKAPI_CALL vkGetPhysicalDeviceFormatProperties(
//VkPhysicalDevice                            physicalDevice,
//VkFormat                                    format,
//VkFormatProperties*                         pFormatProperties);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkGetPhysicalDeviceImageFormatProperties(
//VkPhysicalDevice                            physicalDevice,
//VkFormat                                    format,
//VkImageType                                 type,
//VkImageTiling                               tiling,
//VkImageUsageFlags                           usage,
//VkImageCreateFlags                          flags,
//VkImageFormatProperties*                    pImageFormatProperties);
//
//VKAPI_ATTR void VKAPI_CALL vkGetPhysicalDeviceProperties(
//VkPhysicalDevice                            physicalDevice,
//VkPhysicalDeviceProperties*                 pProperties);
//
//VKAPI_ATTR void VKAPI_CALL vkGetPhysicalDeviceQueueFamilyProperties(
//VkPhysicalDevice                            physicalDevice,
//uint32_t*                                   pQueueFamilyPropertyCount,
//VkQueueFamilyProperties*                    pQueueFamilyProperties);
//
//VKAPI_ATTR void VKAPI_CALL vkGetPhysicalDeviceMemoryProperties(
//VkPhysicalDevice                            physicalDevice,
//VkPhysicalDeviceMemoryProperties*           pMemoryProperties);
//
//VKAPI_ATTR PFN_vkVoidFunction VKAPI_CALL vkGetInstanceProcAddr(
//VkInstance                                  instance,
//const char*                                 pName);
//
//VKAPI_ATTR PFN_vkVoidFunction VKAPI_CALL vkGetDeviceProcAddr(
//VkDevice                                    device,
//const char*                                 pName);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkCreateDevice(
//VkPhysicalDevice                            physicalDevice,
//const VkDeviceCreateInfo*                   pCreateInfo,
//const VkAllocationCallbacks*                pAllocator,
//VkDevice*                                   pDevice);
//
//VKAPI_ATTR void VKAPI_CALL vkDestroyDevice(
//VkDevice                                    device,
//const VkAllocationCallbacks*                pAllocator);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkEnumerateInstanceExtensionProperties(
//const char*                                 pLayerName,
//uint32_t*                                   pPropertyCount,
//VkExtensionProperties*                      pProperties);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkEnumerateDeviceExtensionProperties(
//VkPhysicalDevice                            physicalDevice,
//const char*                                 pLayerName,
//uint32_t*                                   pPropertyCount,
//VkExtensionProperties*                      pProperties);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkEnumerateInstanceLayerProperties(
//uint32_t*                                   pPropertyCount,
//VkLayerProperties*                          pProperties);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkEnumerateDeviceLayerProperties(
//VkPhysicalDevice                            physicalDevice,
//uint32_t*                                   pPropertyCount,
//VkLayerProperties*                          pProperties);
//
//VKAPI_ATTR void VKAPI_CALL vkGetDeviceQueue(
//VkDevice                                    device,
//uint32_t                                    queueFamilyIndex,
//uint32_t                                    queueIndex,
//VkQueue*                                    pQueue);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkQueueSubmit(
//VkQueue                                     queue,
//uint32_t                                    submitCount,
//const VkSubmitInfo*                         pSubmits,
//VkFence                                     fence);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkQueueWaitIdle(
//VkQueue                                     queue);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkDeviceWaitIdle(
//VkDevice                                    device);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkAllocateMemory(
//VkDevice                                    device,
//const VkMemoryAllocateInfo*                 pAllocateInfo,
//const VkAllocationCallbacks*                pAllocator,
//VkDeviceMemory*                             pMemory);
//
//VKAPI_ATTR void VKAPI_CALL vkFreeMemory(
//VkDevice                                    device,
//VkDeviceMemory                              memory,
//const VkAllocationCallbacks*                pAllocator);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkMapMemory(
//VkDevice                                    device,
//VkDeviceMemory                              memory,
//VkDeviceSize                                offset,
//VkDeviceSize                                size,
//VkMemoryMapFlags                            flags,
//void**                                      ppData);
//
//VKAPI_ATTR void VKAPI_CALL vkUnmapMemory(
//VkDevice                                    device,
//VkDeviceMemory                              memory);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkFlushMappedMemoryRanges(
//VkDevice                                    device,
//uint32_t                                    memoryRangeCount,
//const VkMappedMemoryRange*                  pMemoryRanges);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkInvalidateMappedMemoryRanges(
//VkDevice                                    device,
//uint32_t                                    memoryRangeCount,
//const VkMappedMemoryRange*                  pMemoryRanges);
//
//VKAPI_ATTR void VKAPI_CALL vkGetDeviceMemoryCommitment(
//VkDevice                                    device,
//VkDeviceMemory                              memory,
//VkDeviceSize*                               pCommittedMemoryInBytes);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkBindBufferMemory(
//VkDevice                                    device,
//VkBuffer                                    buffer,
//VkDeviceMemory                              memory,
//VkDeviceSize                                memoryOffset);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkBindImageMemory(
//VkDevice                                    device,
//VkImage                                     image,
//VkDeviceMemory                              memory,
//VkDeviceSize                                memoryOffset);
//
//VKAPI_ATTR void VKAPI_CALL vkGetBufferMemoryRequirements(
//VkDevice                                    device,
//VkBuffer                                    buffer,
//VkMemoryRequirements*                       pMemoryRequirements);
//
//VKAPI_ATTR void VKAPI_CALL vkGetImageMemoryRequirements(
//VkDevice                                    device,
//VkImage                                     image,
//VkMemoryRequirements*                       pMemoryRequirements);
//
//VKAPI_ATTR void VKAPI_CALL vkGetImageSparseMemoryRequirements(
//VkDevice                                    device,
//VkImage                                     image,
//uint32_t*                                   pSparseMemoryRequirementCount,
//VkSparseImageMemoryRequirements*            pSparseMemoryRequirements);
//
//VKAPI_ATTR void VKAPI_CALL vkGetPhysicalDeviceSparseImageFormatProperties(
//VkPhysicalDevice                            physicalDevice,
//VkFormat                                    format,
//VkImageType                                 type,
//VkSampleCountFlagBits                       samples,
//VkImageUsageFlags                           usage,
//VkImageTiling                               tiling,
//uint32_t*                                   pPropertyCount,
//VkSparseImageFormatProperties*              pProperties);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkQueueBindSparse(
//VkQueue                                     queue,
//uint32_t                                    bindInfoCount,
//const VkBindSparseInfo*                     pBindInfo,
//VkFence                                     fence);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkCreateFence(
//VkDevice                                    device,
//const VkFenceCreateInfo*                    pCreateInfo,
//const VkAllocationCallbacks*                pAllocator,
//VkFence*                                    pFence);
//
//VKAPI_ATTR void VKAPI_CALL vkDestroyFence(
//VkDevice                                    device,
//VkFence                                     fence,
//const VkAllocationCallbacks*                pAllocator);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkResetFences(
//VkDevice                                    device,
//uint32_t                                    fenceCount,
//const VkFence*                              pFences);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkGetFenceStatus(
//VkDevice                                    device,
//VkFence                                     fence);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkWaitForFences(
//VkDevice                                    device,
//uint32_t                                    fenceCount,
//const VkFence*                              pFences,
//VkBool32                                    waitAll,
//uint64_t                                    timeout);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkCreateSemaphore(
//VkDevice                                    device,
//const VkSemaphoreCreateInfo*                pCreateInfo,
//const VkAllocationCallbacks*                pAllocator,
//VkSemaphore*                                pSemaphore);
//
//VKAPI_ATTR void VKAPI_CALL vkDestroySemaphore(
//VkDevice                                    device,
//VkSemaphore                                 semaphore,
//const VkAllocationCallbacks*                pAllocator);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkCreateEvent(
//VkDevice                                    device,
//const VkEventCreateInfo*                    pCreateInfo,
//const VkAllocationCallbacks*                pAllocator,
//VkEvent*                                    pEvent);
//
//VKAPI_ATTR void VKAPI_CALL vkDestroyEvent(
//VkDevice                                    device,
//VkEvent                                     event,
//const VkAllocationCallbacks*                pAllocator);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkGetEventStatus(
//VkDevice                                    device,
//VkEvent                                     event);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkSetEvent(
//VkDevice                                    device,
//VkEvent                                     event);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkResetEvent(
//VkDevice                                    device,
//VkEvent                                     event);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkCreateQueryPool(
//VkDevice                                    device,
//const VkQueryPoolCreateInfo*                pCreateInfo,
//const VkAllocationCallbacks*                pAllocator,
//VkQueryPool*                                pQueryPool);
//
//VKAPI_ATTR void VKAPI_CALL vkDestroyQueryPool(
//VkDevice                                    device,
//VkQueryPool                                 queryPool,
//const VkAllocationCallbacks*                pAllocator);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkGetQueryPoolResults(
//VkDevice                                    device,
//VkQueryPool                                 queryPool,
//uint32_t                                    firstQuery,
//uint32_t                                    queryCount,
//size_t                                      dataSize,
//void*                                       pData,
//VkDeviceSize                                stride,
//VkQueryResultFlags                          flags);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkCreateBuffer(
//VkDevice                                    device,
//const VkBufferCreateInfo*                   pCreateInfo,
//const VkAllocationCallbacks*                pAllocator,
//VkBuffer*                                   pBuffer);
//
//VKAPI_ATTR void VKAPI_CALL vkDestroyBuffer(
//VkDevice                                    device,
//VkBuffer                                    buffer,
//const VkAllocationCallbacks*                pAllocator);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkCreateBufferView(
//VkDevice                                    device,
//const VkBufferViewCreateInfo*               pCreateInfo,
//const VkAllocationCallbacks*                pAllocator,
//VkBufferView*                               pView);
//
//VKAPI_ATTR void VKAPI_CALL vkDestroyBufferView(
//VkDevice                                    device,
//VkBufferView                                bufferView,
//const VkAllocationCallbacks*                pAllocator);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkCreateImage(
//VkDevice                                    device,
//const VkImageCreateInfo*                    pCreateInfo,
//const VkAllocationCallbacks*                pAllocator,
//VkImage*                                    pImage);
//
//VKAPI_ATTR void VKAPI_CALL vkDestroyImage(
//VkDevice                                    device,
//VkImage                                     image,
//const VkAllocationCallbacks*                pAllocator);
//
//VKAPI_ATTR void VKAPI_CALL vkGetImageSubresourceLayout(
//VkDevice                                    device,
//VkImage                                     image,
//const VkImageSubresource*                   pSubresource,
//VkSubresourceLayout*                        pLayout);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkCreateImageView(
//VkDevice                                    device,
//const VkImageViewCreateInfo*                pCreateInfo,
//const VkAllocationCallbacks*                pAllocator,
//VkImageView*                                pView);
//
//VKAPI_ATTR void VKAPI_CALL vkDestroyImageView(
//VkDevice                                    device,
//VkImageView                                 imageView,
//const VkAllocationCallbacks*                pAllocator);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkCreateShaderModule(
//VkDevice                                    device,
//const VkShaderModuleCreateInfo*             pCreateInfo,
//const VkAllocationCallbacks*                pAllocator,
//VkShaderModule*                             pShaderModule);
//
//VKAPI_ATTR void VKAPI_CALL vkDestroyShaderModule(
//VkDevice                                    device,
//VkShaderModule                              shaderModule,
//const VkAllocationCallbacks*                pAllocator);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkCreatePipelineCache(
//VkDevice                                    device,
//const VkPipelineCacheCreateInfo*            pCreateInfo,
//const VkAllocationCallbacks*                pAllocator,
//VkPipelineCache*                            pPipelineCache);
//
//VKAPI_ATTR void VKAPI_CALL vkDestroyPipelineCache(
//VkDevice                                    device,
//VkPipelineCache                             pipelineCache,
//const VkAllocationCallbacks*                pAllocator);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkGetPipelineCacheData(
//VkDevice                                    device,
//VkPipelineCache                             pipelineCache,
//size_t*                                     pDataSize,
//void*                                       pData);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkMergePipelineCaches(
//VkDevice                                    device,
//VkPipelineCache                             dstCache,
//uint32_t                                    srcCacheCount,
//const VkPipelineCache*                      pSrcCaches);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkCreateGraphicsPipelines(
//VkDevice                                    device,
//VkPipelineCache                             pipelineCache,
//uint32_t                                    createInfoCount,
//const VkGraphicsPipelineCreateInfo*         pCreateInfos,
//const VkAllocationCallbacks*                pAllocator,
//VkPipeline*                                 pPipelines);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkCreateComputePipelines(
//VkDevice                                    device,
//VkPipelineCache                             pipelineCache,
//uint32_t                                    createInfoCount,
//const VkComputePipelineCreateInfo*          pCreateInfos,
//const VkAllocationCallbacks*                pAllocator,
//VkPipeline*                                 pPipelines);
//
//VKAPI_ATTR void VKAPI_CALL vkDestroyPipeline(
//VkDevice                                    device,
//VkPipeline                                  pipeline,
//const VkAllocationCallbacks*                pAllocator);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkCreatePipelineLayout(
//VkDevice                                    device,
//const VkPipelineLayoutCreateInfo*           pCreateInfo,
//const VkAllocationCallbacks*                pAllocator,
//VkPipelineLayout*                           pPipelineLayout);
//
//VKAPI_ATTR void VKAPI_CALL vkDestroyPipelineLayout(
//VkDevice                                    device,
//VkPipelineLayout                            pipelineLayout,
//const VkAllocationCallbacks*                pAllocator);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkCreateSampler(
//VkDevice                                    device,
//const VkSamplerCreateInfo*                  pCreateInfo,
//const VkAllocationCallbacks*                pAllocator,
//VkSampler*                                  pSampler);
//
//VKAPI_ATTR void VKAPI_CALL vkDestroySampler(
//VkDevice                                    device,
//VkSampler                                   sampler,
//const VkAllocationCallbacks*                pAllocator);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkCreateDescriptorSetLayout(
//VkDevice                                    device,
//const VkDescriptorSetLayoutCreateInfo*      pCreateInfo,
//const VkAllocationCallbacks*                pAllocator,
//VkDescriptorSetLayout*                      pSetLayout);
//
//VKAPI_ATTR void VKAPI_CALL vkDestroyDescriptorSetLayout(
//VkDevice                                    device,
//VkDescriptorSetLayout                       descriptorSetLayout,
//const VkAllocationCallbacks*                pAllocator);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkCreateDescriptorPool(
//VkDevice                                    device,
//const VkDescriptorPoolCreateInfo*           pCreateInfo,
//const VkAllocationCallbacks*                pAllocator,
//VkDescriptorPool*                           pDescriptorPool);
//
//VKAPI_ATTR void VKAPI_CALL vkDestroyDescriptorPool(
//VkDevice                                    device,
//VkDescriptorPool                            descriptorPool,
//const VkAllocationCallbacks*                pAllocator);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkResetDescriptorPool(
//VkDevice                                    device,
//VkDescriptorPool                            descriptorPool,
//VkDescriptorPoolResetFlags                  flags);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkAllocateDescriptorSets(
//VkDevice                                    device,
//const VkDescriptorSetAllocateInfo*          pAllocateInfo,
//VkDescriptorSet*                            pDescriptorSets);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkFreeDescriptorSets(
//VkDevice                                    device,
//VkDescriptorPool                            descriptorPool,
//uint32_t                                    descriptorSetCount,
//const VkDescriptorSet*                      pDescriptorSets);
//
//VKAPI_ATTR void VKAPI_CALL vkUpdateDescriptorSets(
//VkDevice                                    device,
//uint32_t                                    descriptorWriteCount,
//const VkWriteDescriptorSet*                 pDescriptorWrites,
//uint32_t                                    descriptorCopyCount,
//const VkCopyDescriptorSet*                  pDescriptorCopies);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkCreateFramebuffer(
//VkDevice                                    device,
//const VkFramebufferCreateInfo*              pCreateInfo,
//const VkAllocationCallbacks*                pAllocator,
//VkFramebuffer*                              pFramebuffer);
//
//VKAPI_ATTR void VKAPI_CALL vkDestroyFramebuffer(
//VkDevice                                    device,
//VkFramebuffer                               framebuffer,
//const VkAllocationCallbacks*                pAllocator);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkCreateRenderPass(
//VkDevice                                    device,
//const VkRenderPassCreateInfo*               pCreateInfo,
//const VkAllocationCallbacks*                pAllocator,
//VkRenderPass*                               pRenderPass);
//
//VKAPI_ATTR void VKAPI_CALL vkDestroyRenderPass(
//VkDevice                                    device,
//VkRenderPass                                renderPass,
//const VkAllocationCallbacks*                pAllocator);
//
//VKAPI_ATTR void VKAPI_CALL vkGetRenderAreaGranularity(
//VkDevice                                    device,
//VkRenderPass                                renderPass,
//VkExtent2D*                                 pGranularity);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkCreateCommandPool(
//VkDevice                                    device,
//const VkCommandPoolCreateInfo*              pCreateInfo,
//const VkAllocationCallbacks*                pAllocator,
//VkCommandPool*                              pCommandPool);
//
//VKAPI_ATTR void VKAPI_CALL vkDestroyCommandPool(
//VkDevice                                    device,
//VkCommandPool                               commandPool,
//const VkAllocationCallbacks*                pAllocator);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkResetCommandPool(
//VkDevice                                    device,
//VkCommandPool                               commandPool,
//VkCommandPoolResetFlags                     flags);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkAllocateCommandBuffers(
//VkDevice                                    device,
//const VkCommandBufferAllocateInfo*          pAllocateInfo,
//VkCommandBuffer*                            pCommandBuffers);
//
//VKAPI_ATTR void VKAPI_CALL vkFreeCommandBuffers(
//VkDevice                                    device,
//VkCommandPool                               commandPool,
//uint32_t                                    commandBufferCount,
//const VkCommandBuffer*                      pCommandBuffers);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkBeginCommandBuffer(
//VkCommandBuffer                             commandBuffer,
//const VkCommandBufferBeginInfo*             pBeginInfo);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkEndCommandBuffer(
//VkCommandBuffer                             commandBuffer);
//
//VKAPI_ATTR VkResult VKAPI_CALL vkResetCommandBuffer(
//VkCommandBuffer                             commandBuffer,
//VkCommandBufferResetFlags                   flags);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdBindPipeline(
//VkCommandBuffer                             commandBuffer,
//VkPipelineBindPoint                         pipelineBindPoint,
//VkPipeline                                  pipeline);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdSetViewport(
//VkCommandBuffer                             commandBuffer,
//uint32_t                                    firstViewport,
//uint32_t                                    viewportCount,
//const VkViewport*                           pViewports);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdSetScissor(
//VkCommandBuffer                             commandBuffer,
//uint32_t                                    firstScissor,
//uint32_t                                    scissorCount,
//const VkRect2D*                             pScissors);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdSetLineWidth(
//VkCommandBuffer                             commandBuffer,
//float                                       lineWidth);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdSetDepthBias(
//VkCommandBuffer                             commandBuffer,
//float                                       depthBiasConstantFactor,
//float                                       depthBiasClamp,
//float                                       depthBiasSlopeFactor);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdSetBlendConstants(
//VkCommandBuffer                             commandBuffer,
//const float                                 blendConstants[4]);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdSetDepthBounds(
//VkCommandBuffer                             commandBuffer,
//float                                       minDepthBounds,
//float                                       maxDepthBounds);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdSetStencilCompareMask(
//VkCommandBuffer                             commandBuffer,
//VkStencilFaceFlags                          faceMask,
//uint32_t                                    compareMask);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdSetStencilWriteMask(
//VkCommandBuffer                             commandBuffer,
//VkStencilFaceFlags                          faceMask,
//uint32_t                                    writeMask);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdSetStencilReference(
//VkCommandBuffer                             commandBuffer,
//VkStencilFaceFlags                          faceMask,
//uint32_t                                    reference);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdBindDescriptorSets(
//VkCommandBuffer                             commandBuffer,
//VkPipelineBindPoint                         pipelineBindPoint,
//VkPipelineLayout                            layout,
//uint32_t                                    firstSet,
//uint32_t                                    descriptorSetCount,
//const VkDescriptorSet*                      pDescriptorSets,
//uint32_t                                    dynamicOffsetCount,
//const uint32_t*                             pDynamicOffsets);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdBindIndexBuffer(
//VkCommandBuffer                             commandBuffer,
//VkBuffer                                    buffer,
//VkDeviceSize                                offset,
//VkIndexType                                 indexType);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdBindVertexBuffers(
//VkCommandBuffer                             commandBuffer,
//uint32_t                                    firstBinding,
//uint32_t                                    bindingCount,
//const VkBuffer*                             pBuffers,
//const VkDeviceSize*                         pOffsets);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdDraw(
//VkCommandBuffer                             commandBuffer,
//uint32_t                                    vertexCount,
//uint32_t                                    instanceCount,
//uint32_t                                    firstVertex,
//uint32_t                                    firstInstance);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdDrawIndexed(
//VkCommandBuffer                             commandBuffer,
//uint32_t                                    indexCount,
//uint32_t                                    instanceCount,
//uint32_t                                    firstIndex,
//int32_t                                     vertexOffset,
//uint32_t                                    firstInstance);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdDrawIndirect(
//VkCommandBuffer                             commandBuffer,
//VkBuffer                                    buffer,
//VkDeviceSize                                offset,
//uint32_t                                    drawCount,
//uint32_t                                    stride);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdDrawIndexedIndirect(
//VkCommandBuffer                             commandBuffer,
//VkBuffer                                    buffer,
//VkDeviceSize                                offset,
//uint32_t                                    drawCount,
//uint32_t                                    stride);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdDispatch(
//VkCommandBuffer                             commandBuffer,
//uint32_t                                    groupCountX,
//uint32_t                                    groupCountY,
//uint32_t                                    groupCountZ);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdDispatchIndirect(
//VkCommandBuffer                             commandBuffer,
//VkBuffer                                    buffer,
//VkDeviceSize                                offset);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdCopyBuffer(
//VkCommandBuffer                             commandBuffer,
//VkBuffer                                    srcBuffer,
//VkBuffer                                    dstBuffer,
//uint32_t                                    regionCount,
//const VkBufferCopy*                         pRegions);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdCopyImage(
//VkCommandBuffer                             commandBuffer,
//VkImage                                     srcImage,
//VkImageLayout                               srcImageLayout,
//VkImage                                     dstImage,
//VkImageLayout                               dstImageLayout,
//uint32_t                                    regionCount,
//const VkImageCopy*                          pRegions);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdBlitImage(
//VkCommandBuffer                             commandBuffer,
//VkImage                                     srcImage,
//VkImageLayout                               srcImageLayout,
//VkImage                                     dstImage,
//VkImageLayout                               dstImageLayout,
//uint32_t                                    regionCount,
//const VkImageBlit*                          pRegions,
//VkFilter                                    filter);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdCopyBufferToImage(
//VkCommandBuffer                             commandBuffer,
//VkBuffer                                    srcBuffer,
//VkImage                                     dstImage,
//VkImageLayout                               dstImageLayout,
//uint32_t                                    regionCount,
//const VkBufferImageCopy*                    pRegions);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdCopyImageToBuffer(
//VkCommandBuffer                             commandBuffer,
//VkImage                                     srcImage,
//VkImageLayout                               srcImageLayout,
//VkBuffer                                    dstBuffer,
//uint32_t                                    regionCount,
//const VkBufferImageCopy*                    pRegions);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdUpdateBuffer(
//VkCommandBuffer                             commandBuffer,
//VkBuffer                                    dstBuffer,
//VkDeviceSize                                dstOffset,
//VkDeviceSize                                dataSize,
//const void*                                 pData);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdFillBuffer(
//VkCommandBuffer                             commandBuffer,
//VkBuffer                                    dstBuffer,
//VkDeviceSize                                dstOffset,
//VkDeviceSize                                size,
//uint32_t                                    data);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdClearColorImage(
//VkCommandBuffer                             commandBuffer,
//VkImage                                     image,
//VkImageLayout                               imageLayout,
//const VkClearColorValue*                    pColor,
//uint32_t                                    rangeCount,
//const VkImageSubresourceRange*              pRanges);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdClearDepthStencilImage(
//VkCommandBuffer                             commandBuffer,
//VkImage                                     image,
//VkImageLayout                               imageLayout,
//const VkClearDepthStencilValue*             pDepthStencil,
//uint32_t                                    rangeCount,
//const VkImageSubresourceRange*              pRanges);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdClearAttachments(
//VkCommandBuffer                             commandBuffer,
//uint32_t                                    attachmentCount,
//const VkClearAttachment*                    pAttachments,
//uint32_t                                    rectCount,
//const VkClearRect*                          pRects);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdResolveImage(
//VkCommandBuffer                             commandBuffer,
//VkImage                                     srcImage,
//VkImageLayout                               srcImageLayout,
//VkImage                                     dstImage,
//VkImageLayout                               dstImageLayout,
//uint32_t                                    regionCount,
//const VkImageResolve*                       pRegions);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdSetEvent(
//VkCommandBuffer                             commandBuffer,
//VkEvent                                     event,
//VkPipelineStageFlags                        stageMask);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdResetEvent(
//VkCommandBuffer                             commandBuffer,
//VkEvent                                     event,
//VkPipelineStageFlags                        stageMask);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdWaitEvents(
//VkCommandBuffer                             commandBuffer,
//uint32_t                                    eventCount,
//const VkEvent*                              pEvents,
//VkPipelineStageFlags                        srcStageMask,
//VkPipelineStageFlags                        dstStageMask,
//uint32_t                                    memoryBarrierCount,
//const VkMemoryBarrier*                      pMemoryBarriers,
//uint32_t                                    bufferMemoryBarrierCount,
//const VkBufferMemoryBarrier*                pBufferMemoryBarriers,
//uint32_t                                    imageMemoryBarrierCount,
//const VkImageMemoryBarrier*                 pImageMemoryBarriers);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdPipelineBarrier(
//VkCommandBuffer                             commandBuffer,
//VkPipelineStageFlags                        srcStageMask,
//VkPipelineStageFlags                        dstStageMask,
//VkDependencyFlags                           dependencyFlags,
//uint32_t                                    memoryBarrierCount,
//const VkMemoryBarrier*                      pMemoryBarriers,
//uint32_t                                    bufferMemoryBarrierCount,
//const VkBufferMemoryBarrier*                pBufferMemoryBarriers,
//uint32_t                                    imageMemoryBarrierCount,
//const VkImageMemoryBarrier*                 pImageMemoryBarriers);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdBeginQuery(
//VkCommandBuffer                             commandBuffer,
//VkQueryPool                                 queryPool,
//uint32_t                                    query,
//VkQueryControlFlags                         flags);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdEndQuery(
//VkCommandBuffer                             commandBuffer,
//VkQueryPool                                 queryPool,
//uint32_t                                    query);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdResetQueryPool(
//VkCommandBuffer                             commandBuffer,
//VkQueryPool                                 queryPool,
//uint32_t                                    firstQuery,
//uint32_t                                    queryCount);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdWriteTimestamp(
//VkCommandBuffer                             commandBuffer,
//VkPipelineStageFlagBits                     pipelineStage,
//VkQueryPool                                 queryPool,
//uint32_t                                    query);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdCopyQueryPoolResults(
//VkCommandBuffer                             commandBuffer,
//VkQueryPool                                 queryPool,
//uint32_t                                    firstQuery,
//uint32_t                                    queryCount,
//VkBuffer                                    dstBuffer,
//VkDeviceSize                                dstOffset,
//VkDeviceSize                                stride,
//VkQueryResultFlags                          flags);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdPushConstants(
//VkCommandBuffer                             commandBuffer,
//VkPipelineLayout                            layout,
//VkShaderStageFlags                          stageFlags,
//uint32_t                                    offset,
//uint32_t                                    size,
//const void*                                 pValues);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdBeginRenderPass(
//VkCommandBuffer                             commandBuffer,
//const VkRenderPassBeginInfo*                pRenderPassBegin,
//VkSubpassContents                           contents);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdNextSubpass(
//VkCommandBuffer                             commandBuffer,
//VkSubpassContents                           contents);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdEndRenderPass(
//VkCommandBuffer                             commandBuffer);
//
//VKAPI_ATTR void VKAPI_CALL vkCmdExecuteCommands(
//VkCommandBuffer                             commandBuffer,
//uint32_t                                    commandBufferCount,
//const VkCommandBuffer*                      pCommandBuffers);


}