//
// Created by elect on 29/09/19.
//

import Foundation

typealias Flags = UInt32

enum PipelineCacheHeaderVersion: Int32 {
    case one = 1
}

enum Result: Int32 {
    case success = 0,
         notReady = 1,
         timeout = 2,
         eventSet = 3,
         eventReset = 4,
         incomplete = 5,
         errorOutOfHostMemory = -1,
         errorOutOfDeviceMemory = -2,
         errorInitializationFailed = -3,
         errorDeviceLost = -4,
         errorMemoryMapFailed = -5,
         errorLayerNotPresent = -6,
         errorExtensionNotPresent = -7,
         errorFeatureNotPresent = -8,
         errorIncompatibleDriver = -9,
         errorTooManyObjects = -10,
         errorFormatNotSupported = -11,
         errorFragmentedPool = -12,
         errorOutOfPoolMemory = -1000069000,
         errorInvalidExternalHandle = -1000072003,
         errorSurfaceLostKhr = -1000000000,
         errorNativeWindowInUseKhr = -1000000001,
         suboptimalKhr = 1000001003,
         errorOutOfDateKhr = -1000001004,
         errorIncompatibleDisplayKhr = -1000003001,
         errorValidationFailedExt = -1000011001,
         errorInvalidShaderNv = -1000012000,
         errorInvalidDrmFormatModifierPlaneLayoutExt = -1000158000,
         errorFragmentationExt = -1000161000,
         errorNotPermittedExt = -1000174001,
         errorInvalidDeviceAddressExt = -1000244000
    static let
            errorOutOfPoolMemoryKhr = errorOutOfPoolMemory,
            errorInvalidExternalHandleKhr = errorInvalidExternalHandle
}

enum StructureType: UInt32 {
    case applicationInfo = 0,
         instanceCreateInfo = 1,
         deviceQueueCreateInfo = 2,
         deviceCreateInfo = 3,
         submitInfo = 4,
         memoryAllocateInfo = 5,
         mappedMemoryRange = 6,
         bindSparseInfo = 7,
         fenceCreateInfo = 8,
         semaphoreCreateInfo = 9,
         eventCreateInfo = 10,
         queryPoolCreateInfo = 11,
         bufferCreateInfo = 12,
         bufferViewCreateInfo = 13,
         imageCreateInfo = 14,
         imageViewCreateInfo = 15,
         shaderModuleCreateInfo = 16,
         pipelineCacheCreateInfo = 17,
         pipelineShaderStageCreateInfo = 18,
         pipelineVertexInputStateCreateInfo = 19,
         pipelineInputAssemblyStateCreateInfo = 20,
         pipelineTessellationStateCreateInfo = 21,
         pipelineViewportStateCreateInfo = 22,
         pipelineRasterizationStateCreateInfo = 23,
         pipelineMultisampleStateCreateInfo = 24,
         pipelineDepthStencilStateCreateInfo = 25,
         pipelineColorBlendStateCreateInfo = 26,
         pipelineDynamicStateCreateInfo = 27,
         graphicsPipelineCreateInfo = 28,
         computePipelineCreateInfo = 29,
         pipelineLayoutCreateInfo = 30,
         samplerCreateInfo = 31,
         descriptorSetLayoutCreateInfo = 32,
         descriptorPoolCreateInfo = 33,
         descriptorSetAllocateInfo = 34,
         writeDescriptorSet = 35,
         copyDescriptorSet = 36,
         framebufferCreateInfo = 37,
         renderPassCreateInfo = 38,
         commandPoolCreateInfo = 39,
         commandBufferAllocateInfo = 40,
         commandBufferInheritanceInfo = 41,
         commandBufferBeginInfo = 42,
         renderPassBeginInfo = 43,
         bufferMemoryBarrier = 44,
         imageMemoryBarrier = 45,
         memoryBarrier = 46,
         loaderInstanceCreateInfo = 47,
         loaderDeviceCreateInfo = 48,
         physicalDeviceSubgroupProperties = 1000094000,
         bindBufferMemoryInfo = 1000157000,
         bindImageMemoryInfo = 1000157001,
         physicalDevice16bitStorageFeatures = 1000083000,
         memoryDedicatedRequirements = 1000127000,
         memoryDedicatedAllocateInfo = 1000127001,
         memoryAllocateFlagsInfo = 1000060000,
         deviceGroupRenderPassBeginInfo = 1000060003,
         deviceGroupCommandBufferBeginInfo = 1000060004,
         deviceGroupSubmitInfo = 1000060005,
         deviceGroupBindSparseInfo = 1000060006,
         bindBufferMemoryDeviceGroupInfo = 1000060013,
         bindImageMemoryDeviceGroupInfo = 1000060014,
         physicalDeviceGroupProperties = 1000070000,
         deviceGroupDeviceCreateInfo = 1000070001,
         bufferMemoryRequirementsInfo2 = 1000146000,
         imageMemoryRequirementsInfo2 = 1000146001,
         imageSparseMemoryRequirementsInfo2 = 1000146002,
         memoryRequirements2 = 1000146003,
         sparseImageMemoryRequirements2 = 1000146004,
         physicalDeviceFeatures2 = 1000059000,
         physicalDeviceProperties2 = 1000059001,
         formatProperties2 = 1000059002,
         imageFormatProperties2 = 1000059003,
         physicalDeviceImageFormatInfo2 = 1000059004,
         queueFamilyProperties2 = 1000059005,
         physicalDeviceMemoryProperties2 = 1000059006,
         sparseImageFormatProperties2 = 1000059007,
         physicalDeviceSparseImageFormatInfo2 = 1000059008,
         physicalDevicePointClippingProperties = 1000117000,
         renderPassInputAttachmentAspectCreateInfo = 1000117001,
         imageViewUsageCreateInfo = 1000117002,
         pipelineTessellationDomainOriginStateCreateInfo = 1000117003,
         renderPassMultiviewCreateInfo = 1000053000,
         physicalDeviceMultiviewFeatures = 1000053001,
         physicalDeviceMultiviewProperties = 1000053002,
         physicalDeviceVariablePointerFeatures = 1000120000,
         protectedSubmitInfo = 1000145000,
         physicalDeviceProtectedMemoryFeatures = 1000145001,
         physicalDeviceProtectedMemoryProperties = 1000145002,
         deviceQueueInfo2 = 1000145003,
         samplerYcbcrConversionCreateInfo = 1000156000,
         samplerYcbcrConversionInfo = 1000156001,
         bindImagePlaneMemoryInfo = 1000156002,
         imagePlaneMemoryRequirementsInfo = 1000156003,
         physicalDeviceSamplerYcbcrConversionFeatures = 1000156004,
         samplerYcbcrConversionImageFormatProperties = 1000156005,
         descriptorUpdateTemplateCreateInfo = 1000085000,
         physicalDeviceExternalImageFormatInfo = 1000071000,
         externalImageFormatProperties = 1000071001,
         physicalDeviceExternalBufferInfo = 1000071002,
         externalBufferProperties = 1000071003,
         physicalDeviceIdProperties = 1000071004,
         externalMemoryBufferCreateInfo = 1000072000,
         externalMemoryImageCreateInfo = 1000072001,
         exportMemoryAllocateInfo = 1000072002,
         physicalDeviceExternalFenceInfo = 1000112000,
         externalFenceProperties = 1000112001,
         exportFenceCreateInfo = 1000113000,
         exportSemaphoreCreateInfo = 1000077000,
         physicalDeviceExternalSemaphoreInfo = 1000076000,
         externalSemaphoreProperties = 1000076001,
         physicalDeviceMaintenance3Properties = 1000168000,
         descriptorSetLayoutSupport = 1000168001,
         physicalDeviceShaderDrawParameterFeatures = 1000063000,
         swapchainCreateInfoKhr = 1000001000,
         presentInfoKhr = 1000001001,
         deviceGroupPresentCapabilitiesKhr = 1000060007,
         imageSwapchainCreateInfoKhr = 1000060008,
         bindImageMemorySwapchainInfoKhr = 1000060009,
         acquireNextImageInfoKhr = 1000060010,
         deviceGroupPresentInfoKhr = 1000060011,
         deviceGroupSwapchainCreateInfoKhr = 1000060012,
         displayModeCreateInfoKhr = 1000002000,
         displaySurfaceCreateInfoKhr = 1000002001,
         displayPresentInfoKhr = 1000003000,
         xlibSurfaceCreateInfoKhr = 1000004000,
         xcbSurfaceCreateInfoKhr = 1000005000,
         waylandSurfaceCreateInfoKhr = 1000006000,
         androidSurfaceCreateInfoKhr = 1000008000,
         win32SurfaceCreateInfoKhr = 1000009000,
         debugReportCallbackCreateInfoExt = 1000011000,
         pipelineRasterizationStateRasterizationOrderAmd = 1000018000,
         debugMarkerObjectNameInfoExt = 1000022000,
         debugMarkerObjectTagInfoExt = 1000022001,
         debugMarkerMarkerInfoExt = 1000022002,
         dedicatedAllocationImageCreateInfoNv = 1000026000,
         dedicatedAllocationBufferCreateInfoNv = 1000026001,
         dedicatedAllocationMemoryAllocateInfoNv = 1000026002,
         physicalDeviceTransformFeedbackFeaturesExt = 1000028000,
         physicalDeviceTransformFeedbackPropertiesExt = 1000028001,
         pipelineRasterizationStateStreamCreateInfoExt = 1000028002,
         textureLodGatherFormatPropertiesAmd = 1000041000,
         physicalDeviceCornerSampledImageFeaturesNv = 1000050000,
         externalMemoryImageCreateInfoNv = 1000056000,
         exportMemoryAllocateInfoNv = 1000056001,
         importMemoryWin32HandleInfoNv = 1000057000,
         exportMemoryWin32HandleInfoNv = 1000057001,
         win32KeyedMutexAcquireReleaseInfoNv = 1000058000,
         validationFlagsExt = 1000061000,
         viSurfaceCreateInfoNn = 1000062000,
         imageViewAstcDecodeModeExt = 1000067000,
         physicalDeviceAstcDecodeFeaturesExt = 1000067001,
         importMemoryWin32HandleInfoKhr = 1000073000,
         exportMemoryWin32HandleInfoKhr = 1000073001,
         memoryWin32HandlePropertiesKhr = 1000073002,
         memoryGetWin32HandleInfoKhr = 1000073003,
         importMemoryFdInfoKhr = 1000074000,
         memoryFdPropertiesKhr = 1000074001,
         memoryGetFdInfoKhr = 1000074002,
         win32KeyedMutexAcquireReleaseInfoKhr = 1000075000,
         importSemaphoreWin32HandleInfoKhr = 1000078000,
         exportSemaphoreWin32HandleInfoKhr = 1000078001,
         d3d12FenceSubmitInfoKhr = 1000078002,
         semaphoreGetWin32HandleInfoKhr = 1000078003,
         importSemaphoreFdInfoKhr = 1000079000,
         semaphoreGetFdInfoKhr = 1000079001,
         physicalDevicePushDescriptorPropertiesKhr = 1000080000,
         commandBufferInheritanceConditionalRenderingInfoExt = 1000081000,
         physicalDeviceConditionalRenderingFeaturesExt = 1000081001,
         conditionalRenderingBeginInfoExt = 1000081002,
         physicalDeviceFloat16Int8FeaturesKhr = 1000082000,
         presentRegionsKhr = 1000084000,
         objectTableCreateInfoNvx = 1000086000,
         indirectCommandsLayoutCreateInfoNvx = 1000086001,
         cmdProcessCommandsInfoNvx = 1000086002,
         cmdReserveSpaceForCommandsInfoNvx = 1000086003,
         deviceGeneratedCommandsLimitsNvx = 1000086004,
         deviceGeneratedCommandsFeaturesNvx = 1000086005,
         pipelineViewportWScalingStateCreateInfoNv = 1000087000,
         surfaceCapabilities2Ext = 1000090000,
         displayPowerInfoExt = 1000091000,
         deviceEventInfoExt = 1000091001,
         displayEventInfoExt = 1000091002,
         swapchainCounterCreateInfoExt = 1000091003,
         presentTimesInfoGoogle = 1000092000,
         physicalDeviceMultiviewPerViewAttributesPropertiesNvx = 1000097000,
         pipelineViewportSwizzleStateCreateInfoNv = 1000098000,
         physicalDeviceDiscardRectanglePropertiesExt = 1000099000,
         pipelineDiscardRectangleStateCreateInfoExt = 1000099001,
         physicalDeviceConservativeRasterizationPropertiesExt = 1000101000,
         pipelineRasterizationConservativeStateCreateInfoExt = 1000101001,
         physicalDeviceDepthClipEnableFeaturesExt = 1000102000,
         pipelineRasterizationDepthClipStateCreateInfoExt = 1000102001,
         hdrMetadataExt = 1000105000,
         attachmentDescription2Khr = 1000109000,
         attachmentReference2Khr = 1000109001,
         subpassDescription2Khr = 1000109002,
         subpassDependency2Khr = 1000109003,
         renderPassCreateInfo2Khr = 1000109004,
         subpassBeginInfoKhr = 1000109005,
         subpassEndInfoKhr = 1000109006,
         sharedPresentSurfaceCapabilitiesKhr = 1000111000,
         importFenceWin32HandleInfoKhr = 1000114000,
         exportFenceWin32HandleInfoKhr = 1000114001,
         fenceGetWin32HandleInfoKhr = 1000114002,
         importFenceFdInfoKhr = 1000115000,
         fenceGetFdInfoKhr = 1000115001,
         physicalDeviceSurfaceInfo2Khr = 1000119000,
         surfaceCapabilities2Khr = 1000119001,
         surfaceFormat2Khr = 1000119002,
         displayProperties2Khr = 1000121000,
         displayPlaneProperties2Khr = 1000121001,
         displayModeProperties2Khr = 1000121002,
         displayPlaneInfo2Khr = 1000121003,
         displayPlaneCapabilities2Khr = 1000121004,
         iosSurfaceCreateInfoMvk = 1000122000,
         macosSurfaceCreateInfoMvk = 1000123000,
         debugUtilsObjectNameInfoExt = 1000128000,
         debugUtilsObjectTagInfoExt = 1000128001,
         debugUtilsLabelExt = 1000128002,
         debugUtilsMessengerCallbackDataExt = 1000128003,
         debugUtilsMessengerCreateInfoExt = 1000128004,
         androidHardwareBufferUsageAndroid = 1000129000,
         androidHardwareBufferPropertiesAndroid = 1000129001,
         androidHardwareBufferFormatPropertiesAndroid = 1000129002,
         importAndroidHardwareBufferInfoAndroid = 1000129003,
         memoryGetAndroidHardwareBufferInfoAndroid = 1000129004,
         externalFormatAndroid = 1000129005,
         physicalDeviceSamplerFilterMinmaxPropertiesExt = 1000130000,
         samplerReductionModeCreateInfoExt = 1000130001,
         physicalDeviceInlineUniformBlockFeaturesExt = 1000138000,
         physicalDeviceInlineUniformBlockPropertiesExt = 1000138001,
         writeDescriptorSetInlineUniformBlockExt = 1000138002,
         descriptorPoolInlineUniformBlockCreateInfoExt = 1000138003,
         sampleLocationsInfoExt = 1000143000,
         renderPassSampleLocationsBeginInfoExt = 1000143001,
         pipelineSampleLocationsStateCreateInfoExt = 1000143002,
         physicalDeviceSampleLocationsPropertiesExt = 1000143003,
         multisamplePropertiesExt = 1000143004,
         imageFormatListCreateInfoKhr = 1000147000,
         physicalDeviceBlendOperationAdvancedFeaturesExt = 1000148000,
         physicalDeviceBlendOperationAdvancedPropertiesExt = 1000148001,
         pipelineColorBlendAdvancedStateCreateInfoExt = 1000148002,
         pipelineCoverageToColorStateCreateInfoNv = 1000149000,
         pipelineCoverageModulationStateCreateInfoNv = 1000152000,
         drmFormatModifierPropertiesListExt = 1000158000,
         drmFormatModifierPropertiesExt = 1000158001,
         physicalDeviceImageDrmFormatModifierInfoExt = 1000158002,
         imageDrmFormatModifierListCreateInfoExt = 1000158003,
         imageDrmFormatModifierExplicitCreateInfoExt = 1000158004,
         imageDrmFormatModifierPropertiesExt = 1000158005,
         validationCacheCreateInfoExt = 1000160000,
         shaderModuleValidationCacheCreateInfoExt = 1000160001,
         descriptorSetLayoutBindingFlagsCreateInfoExt = 1000161000,
         physicalDeviceDescriptorIndexingFeaturesExt = 1000161001,
         physicalDeviceDescriptorIndexingPropertiesExt = 1000161002,
         descriptorSetVariableDescriptorCountAllocateInfoExt = 1000161003,
         descriptorSetVariableDescriptorCountLayoutSupportExt = 1000161004,
         pipelineViewportShadingRateImageStateCreateInfoNv = 1000164000,
         physicalDeviceShadingRateImageFeaturesNv = 1000164001,
         physicalDeviceShadingRateImagePropertiesNv = 1000164002,
         pipelineViewportCoarseSampleOrderStateCreateInfoNv = 1000164005,
         rayTracingPipelineCreateInfoNv = 1000165000,
         accelerationStructureCreateInfoNv = 1000165001,
         geometryNv = 1000165003,
         geometryTrianglesNv = 1000165004,
         geometryAabbNv = 1000165005,
         bindAccelerationStructureMemoryInfoNv = 1000165006,
         writeDescriptorSetAccelerationStructureNv = 1000165007,
         accelerationStructureMemoryRequirementsInfoNv = 1000165008,
         physicalDeviceRayTracingPropertiesNv = 1000165009,
         rayTracingShaderGroupCreateInfoNv = 1000165011,
         accelerationStructureInfoNv = 1000165012,
         physicalDeviceRepresentativeFragmentTestFeaturesNv = 1000166000,
         pipelineRepresentativeFragmentTestStateCreateInfoNv = 1000166001,
         physicalDeviceImageViewImageFormatInfoExt = 1000170000,
         filterCubicImageViewImageFormatPropertiesExt = 1000170001,
         deviceQueueGlobalPriorityCreateInfoExt = 1000174000,
         physicalDevice8bitStorageFeaturesKhr = 1000177000,
         importMemoryHostPointerInfoExt = 1000178000,
         memoryHostPointerPropertiesExt = 1000178001,
         physicalDeviceExternalMemoryHostPropertiesExt = 1000178002,
         physicalDeviceShaderAtomicInt64FeaturesKhr = 1000180000,
         calibratedTimestampInfoExt = 1000184000,
         physicalDeviceShaderCorePropertiesAmd = 1000185000,
         deviceMemoryOverallocationCreateInfoAmd = 1000189000,
         physicalDeviceVertexAttributeDivisorPropertiesExt = 1000190000,
         pipelineVertexInputDivisorStateCreateInfoExt = 1000190001,
         physicalDeviceVertexAttributeDivisorFeaturesExt = 1000190002,
         physicalDeviceDriverPropertiesKhr = 1000196000,
         physicalDeviceFloatControlsPropertiesKhr = 1000197000,
         physicalDeviceDepthStencilResolvePropertiesKhr = 1000199000,
         subpassDescriptionDepthStencilResolveKhr = 1000199001,
         physicalDeviceComputeShaderDerivativesFeaturesNv = 1000201000,
         physicalDeviceMeshShaderFeaturesNv = 1000202000,
         physicalDeviceMeshShaderPropertiesNv = 1000202001,
         physicalDeviceFragmentShaderBarycentricFeaturesNv = 1000203000,
         physicalDeviceShaderImageFootprintFeaturesNv = 1000204000,
         pipelineViewportExclusiveScissorStateCreateInfoNv = 1000205000,
         physicalDeviceExclusiveScissorFeaturesNv = 1000205002,
         checkpointDataNv = 1000206000,
         queueFamilyCheckpointPropertiesNv = 1000206001,
         physicalDeviceVulkanMemoryModelFeaturesKhr = 1000211000,
         physicalDevicePciBusInfoPropertiesExt = 1000212000,
         imagepipeSurfaceCreateInfoFuchsia = 1000214000,
         physicalDeviceFragmentDensityMapFeaturesExt = 1000218000,
         physicalDeviceFragmentDensityMapPropertiesExt = 1000218001,
         renderPassFragmentDensityMapCreateInfoExt = 1000218002,
         physicalDeviceScalarBlockLayoutFeaturesExt = 1000221000,
         physicalDeviceMemoryBudgetPropertiesExt = 1000237000,
         physicalDeviceMemoryPriorityFeaturesExt = 1000238000,
         memoryPriorityAllocateInfoExt = 1000238001,
         physicalDeviceDedicatedAllocationImageAliasingFeaturesNv = 1000240000,
         physicalDeviceBufferAddressFeaturesExt = 1000244000,
         bufferDeviceAddressInfoExt = 1000244001,
         bufferDeviceAddressCreateInfoExt = 1000244002,
         imageStencilUsageCreateInfoExt = 1000246000,
         validationFeaturesExt = 1000247000,
         physicalDeviceCooperativeMatrixFeaturesNv = 1000249000,
         cooperativeMatrixPropertiesNv = 1000249001,
         physicalDeviceCooperativeMatrixPropertiesNv = 1000249002

    static let
            debugReportCreateInfoExt = debugReportCallbackCreateInfoExt,
            renderPassMultiviewCreateInfoKhr = renderPassMultiviewCreateInfo,
            physicalDeviceMultiviewFeaturesKhr = physicalDeviceMultiviewFeatures,
            physicalDeviceMultiviewPropertiesKhr = physicalDeviceMultiviewProperties,
            physicalDeviceFeatures2Khr = physicalDeviceFeatures2,
            physicalDeviceProperties2Khr = physicalDeviceProperties2,
            formatProperties2Khr = formatProperties2,
            imageFormatProperties2Khr = imageFormatProperties2,
            physicalDeviceImageFormatInfo2Khr = physicalDeviceImageFormatInfo2,
            queueFamilyProperties2Khr = queueFamilyProperties2,
            physicalDeviceMemoryProperties2Khr = physicalDeviceMemoryProperties2,
            sparseImageFormatProperties2Khr = sparseImageFormatProperties2,
            physicalDeviceSparseImageFormatInfo2Khr = physicalDeviceSparseImageFormatInfo2,
            memoryAllocateFlagsInfoKhr = memoryAllocateFlagsInfo,
            deviceGroupRenderPassBeginInfoKhr = deviceGroupRenderPassBeginInfo,
            deviceGroupCommandBufferBeginInfoKhr = deviceGroupCommandBufferBeginInfo,
            deviceGroupSubmitInfoKhr = deviceGroupSubmitInfo,
            deviceGroupBindSparseInfoKhr = deviceGroupBindSparseInfo,
            bindBufferMemoryDeviceGroupInfoKhr = bindBufferMemoryDeviceGroupInfo,
            bindImageMemoryDeviceGroupInfoKhr = bindImageMemoryDeviceGroupInfo,
            physicalDeviceGroupPropertiesKhr = physicalDeviceGroupProperties,
            deviceGroupDeviceCreateInfoKhr = deviceGroupDeviceCreateInfo,
            physicalDeviceExternalImageFormatInfoKhr = physicalDeviceExternalImageFormatInfo,
            externalImageFormatPropertiesKhr = externalImageFormatProperties,
            physicalDeviceExternalBufferInfoKhr = physicalDeviceExternalBufferInfo,
            externalBufferPropertiesKhr = externalBufferProperties,
            physicalDeviceIdPropertiesKhr = physicalDeviceIdProperties,
            externalMemoryBufferCreateInfoKhr = externalMemoryBufferCreateInfo,
            externalMemoryImageCreateInfoKhr = externalMemoryImageCreateInfo,
            exportMemoryAllocateInfoKhr = exportMemoryAllocateInfo,
            physicalDeviceExternalSemaphoreInfoKhr = physicalDeviceExternalSemaphoreInfo,
            externalSemaphorePropertiesKhr = externalSemaphoreProperties,
            exportSemaphoreCreateInfoKhr = exportSemaphoreCreateInfo,
            physicalDevice16bitStorageFeaturesKhr = physicalDevice16bitStorageFeatures,
            descriptorUpdateTemplateCreateInfoKhr = descriptorUpdateTemplateCreateInfo,
//            surfaceCapabilities2Ext = surfaceCapabilities2Ext,
            physicalDeviceExternalFenceInfoKhr = physicalDeviceExternalFenceInfo,
            externalFencePropertiesKhr = externalFenceProperties,
            exportFenceCreateInfoKhr = exportFenceCreateInfo,
            physicalDevicePointClippingPropertiesKhr = physicalDevicePointClippingProperties,
            renderPassInputAttachmentAspectCreateInfoKhr = renderPassInputAttachmentAspectCreateInfo,
            imageViewUsageCreateInfoKhr = imageViewUsageCreateInfo,
            pipelineTessellationDomainOriginStateCreateInfoKhr = pipelineTessellationDomainOriginStateCreateInfo,
            physicalDeviceVariablePointerFeaturesKhr = physicalDeviceVariablePointerFeatures,
            memoryDedicatedRequirementsKhr = memoryDedicatedRequirements,
            memoryDedicatedAllocateInfoKhr = memoryDedicatedAllocateInfo,
            bufferMemoryRequirementsInfo2Khr = bufferMemoryRequirementsInfo2,
            imageMemoryRequirementsInfo2Khr = imageMemoryRequirementsInfo2,
            imageSparseMemoryRequirementsInfo2Khr = imageSparseMemoryRequirementsInfo2,
            memoryRequirements2Khr = memoryRequirements2,
            sparseImageMemoryRequirements2Khr = sparseImageMemoryRequirements2,
            samplerYcbcrConversionCreateInfoKhr = samplerYcbcrConversionCreateInfo,
            samplerYcbcrConversionInfoKhr = samplerYcbcrConversionInfo,
            bindImagePlaneMemoryInfoKhr = bindImagePlaneMemoryInfo,
            imagePlaneMemoryRequirementsInfoKhr = imagePlaneMemoryRequirementsInfo,
            physicalDeviceSamplerYcbcrConversionFeaturesKhr = physicalDeviceSamplerYcbcrConversionFeatures,
            samplerYcbcrConversionImageFormatPropertiesKhr = samplerYcbcrConversionImageFormatProperties,
            bindBufferMemoryInfoKhr = bindBufferMemoryInfo,
            bindImageMemoryInfoKhr = bindImageMemoryInfo,
            physicalDeviceMaintenance3PropertiesKhr = physicalDeviceMaintenance3Properties,
            descriptorSetLayoutSupportKhr = descriptorSetLayoutSupport
}

enum SystemAllocationScope: Int32 {
    case command = 0,
         object = 1,
         cache = 2,
         device = 3,
         instance = 4
}

enum InternalAllocationType: Int32 {
    case executable = 0
}

enum Format: Int32 {
    case undefined = 0,
         r4g4_unorm_pack8 = 1,
         r4g4b4a4_unorm_pack16 = 2,
         b4g4r4a4_unorm_pack16 = 3,
         r5g6b5_unorm_pack16 = 4,
         b5g6r5_unorm_pack16 = 5,
         r5g5b5a1_unorm_pack16 = 6,
         b5g5r5a1_unorm_pack16 = 7,
         a1r5g5b5_unorm_pack16 = 8,
         r8_unorm = 9,
         r8_snorm = 10,
         r8_uscaled = 11,
         r8_sscaled = 12,
         r8_uint = 13,
         r8_sint = 14,
         r8_srgb = 15,
         r8g8_unorm = 16,
         r8g8_snorm = 17,
         r8g8_uscaled = 18,
         r8g8_sscaled = 19,
         r8g8_uint = 20,
         r8g8_sint = 21,
         r8g8_srgb = 22,
         r8g8b8_unorm = 23,
         r8g8b8_snorm = 24,
         r8g8b8_uscaled = 25,
         r8g8b8_sscaled = 26,
         r8g8b8_uint = 27,
         r8g8b8_sint = 28,
         r8g8b8_srgb = 29,
         b8g8r8_unorm = 30,
         b8g8r8_snorm = 31,
         b8g8r8_uscaled = 32,
         b8g8r8_sscaled = 33,
         b8g8r8_uint = 34,
         b8g8r8_sint = 35,
         b8g8r8_srgb = 36,
         r8g8b8a8_unorm = 37,
         r8g8b8a8_snorm = 38,
         r8g8b8a8_uscaled = 39,
         r8g8b8a8_sscaled = 40,
         r8g8b8a8_uint = 41,
         r8g8b8a8_sint = 42,
         r8g8b8a8_srgb = 43,
         b8g8r8a8_unorm = 44,
         b8g8r8a8_snorm = 45,
         b8g8r8a8_uscaled = 46,
         b8g8r8a8_sscaled = 47,
         b8g8r8a8_uint = 48,
         b8g8r8a8_sint = 49,
         b8g8r8a8_srgb = 50,
         a8b8g8r8_unorm_pack32 = 51,
         a8b8g8r8_snorm_pack32 = 52,
         a8b8g8r8_uscaled_pack32 = 53,
         a8b8g8r8_sscaled_pack32 = 54,
         a8b8g8r8_uint_pack32 = 55,
         a8b8g8r8_sint_pack32 = 56,
         a8b8g8r8_srgb_pack32 = 57,
         a2r10g10b10_unorm_pack32 = 58,
         a2r10g10b10_snorm_pack32 = 59,
         a2r10g10b10_uscaled_pack32 = 60,
         a2r10g10b10_sscaled_pack32 = 61,
         a2r10g10b10_uint_pack32 = 62,
         a2r10g10b10_sint_pack32 = 63,
         a2b10g10r10_unorm_pack32 = 64,
         a2b10g10r10_snorm_pack32 = 65,
         a2b10g10r10_uscaled_pack32 = 66,
         a2b10g10r10_sscaled_pack32 = 67,
         a2b10g10r10_uint_pack32 = 68,
         a2b10g10r10_sint_pack32 = 69,
         r16_unorm = 70,
         r16_snorm = 71,
         r16_uscaled = 72,
         r16_sscaled = 73,
         r16_uint = 74,
         r16_sint = 75,
         r16_sfloat = 76,
         r16g16_unorm = 77,
         r16g16_snorm = 78,
         r16g16_uscaled = 79,
         r16g16_sscaled = 80,
         r16g16_uint = 81,
         r16g16_sint = 82,
         r16g16_sfloat = 83,
         r16g16b16_unorm = 84,
         r16g16b16_snorm = 85,
         r16g16b16_uscaled = 86,
         r16g16b16_sscaled = 87,
         r16g16b16_uint = 88,
         r16g16b16_sint = 89,
         r16g16b16_sfloat = 90,
         r16g16b16a16_unorm = 91,
         r16g16b16a16_snorm = 92,
         r16g16b16a16_uscaled = 93,
         r16g16b16a16_sscaled = 94,
         r16g16b16a16_uint = 95,
         r16g16b16a16_sint = 96,
         r16g16b16a16_sfloat = 97,
         r32_uint = 98,
         r32_sint = 99,
         r32_sfloat = 100,
         r32g32_uint = 101,
         r32g32_sint = 102,
         r32g32_sfloat = 103,
         r32g32b32_uint = 104,
         r32g32b32_sint = 105,
         r32g32b32_sfloat = 106,
         r32g32b32a32_uint = 107,
         r32g32b32a32_sint = 108,
         r32g32b32a32_sfloat = 109,
         r64_uint = 110,
         r64_sint = 111,
         r64_sfloat = 112,
         r64g64_uint = 113,
         r64g64_sint = 114,
         r64g64_sfloat = 115,
         r64g64b64_uint = 116,
         r64g64b64_sint = 117,
         r64g64b64_sfloat = 118,
         r64g64b64a64_uint = 119,
         r64g64b64a64_sint = 120,
         r64g64b64a64_sfloat = 121,
         b10g11r11_ufloat_pack32 = 122,
         e5b9g9r9_ufloat_pack32 = 123,
         d16_unorm = 124,
         x8_d24_unorm_pack32 = 125,
         d32_sfloat = 126,
         s8_uint = 127,
         d16_unorm_s8_uint = 128,
         d24_unorm_s8_uint = 129,
         d32_sfloat_s8_uint = 130,
         bc1_rgb_unorm_block = 131,
         bc1_rgb_srgb_block = 132,
         bc1_rgba_unorm_block = 133,
         bc1_rgba_srgb_block = 134,
         bc2_unorm_block = 135,
         bc2_srgb_block = 136,
         bc3_unorm_block = 137,
         bc3_srgb_block = 138,
         bc4_unorm_block = 139,
         bc4_snorm_block = 140,
         bc5_unorm_block = 141,
         bc5_snorm_block = 142,
         bc6h_ufloat_block = 143,
         bc6h_sfloat_block = 144,
         bc7_unorm_block = 145,
         bc7_srgb_block = 146,
         etc2_r8g8b8_unorm_block = 147,
         etc2_r8g8b8_srgb_block = 148,
         etc2_r8g8b8a1_unorm_block = 149,
         etc2_r8g8b8a1_srgb_block = 150,
         etc2_r8g8b8a8_unorm_block = 151,
         etc2_r8g8b8a8_srgb_block = 152,
         eac_r11_unorm_block = 153,
         eac_r11_snorm_block = 154,
         eac_r11g11_unorm_block = 155,
         eac_r11g11_snorm_block = 156,
         astc_4x4_unorm_block = 157,
         astc_4x4_srgb_block = 158,
         astc_5x4_unorm_block = 159,
         astc_5x4_srgb_block = 160,
         astc_5x5_unorm_block = 161,
         astc_5x5_srgb_block = 162,
         astc_6x5_unorm_block = 163,
         astc_6x5_srgb_block = 164,
         astc_6x6_unorm_block = 165,
         astc_6x6_srgb_block = 166,
         astc_8x5_unorm_block = 167,
         astc_8x5_srgb_block = 168,
         astc_8x6_unorm_block = 169,
         astc_8x6_srgb_block = 170,
         astc_8x8_unorm_block = 171,
         astc_8x8_srgb_block = 172,
         astc_10x5_unorm_block = 173,
         astc_10x5_srgb_block = 174,
         astc_10x6_unorm_block = 175,
         astc_10x6_srgb_block = 176,
         astc_10x8_unorm_block = 177,
         astc_10x8_srgb_block = 178,
         astc_10x10_unorm_block = 179,
         astc_10x10_srgb_block = 180,
         astc_12x10_unorm_block = 181,
         astc_12x10_srgb_block = 182,
         astc_12x12_unorm_block = 183,
         astc_12x12_srgb_block = 184,
         g8b8g8r8_422_unorm = 1000156000,
         b8g8r8g8_422_unorm = 1000156001,
         g8_b8_r8_3plane_420_unorm = 1000156002,
         g8_b8r8_2plane_420_unorm = 1000156003,
         g8_b8_r8_3plane_422_unorm = 1000156004,
         g8_b8r8_2plane_422_unorm = 1000156005,
         g8_b8_r8_3plane_444_unorm = 1000156006,
         r10x6_unorm_pack16 = 1000156007,
         r10x6g10x6_unorm_2pack16 = 1000156008,
         r10x6g10x6b10x6a10x6_unorm_4pack16 = 1000156009,
         g10x6b10x6g10x6r10x6_422_unorm_4pack16 = 1000156010,
         b10x6g10x6r10x6g10x6_422_unorm_4pack16 = 1000156011,
         g10x6_b10x6_r10x6_3plane_420_unorm_3pack16 = 1000156012,
         g10x6_b10x6r10x6_2plane_420_unorm_3pack16 = 1000156013,
         g10x6_b10x6_r10x6_3plane_422_unorm_3pack16 = 1000156014,
         g10x6_b10x6r10x6_2plane_422_unorm_3pack16 = 1000156015,
         g10x6_b10x6_r10x6_3plane_444_unorm_3pack16 = 1000156016,
         r12x4_unorm_pack16 = 1000156017,
         r12x4g12x4_unorm_2pack16 = 1000156018,
         r12x4g12x4b12x4a12x4_unorm_4pack16 = 1000156019,
         g12x4b12x4g12x4r12x4_422_unorm_4pack16 = 1000156020,
         b12x4g12x4r12x4g12x4_422_unorm_4pack16 = 1000156021,
         g12x4_b12x4_r12x4_3plane_420_unorm_3pack16 = 1000156022,
         g12x4_b12x4r12x4_2plane_420_unorm_3pack16 = 1000156023,
         g12x4_b12x4_r12x4_3plane_422_unorm_3pack16 = 1000156024,
         g12x4_b12x4r12x4_2plane_422_unorm_3pack16 = 1000156025,
         g12x4_b12x4_r12x4_3plane_444_unorm_3pack16 = 1000156026,
         g16b16g16r16_422_unorm = 1000156027,
         b16g16r16g16_422_unorm = 1000156028,
         g16_b16_r16_3plane_420_unorm = 1000156029,
         g16_b16r16_2plane_420_unorm = 1000156030,
         g16_b16_r16_3plane_422_unorm = 1000156031,
         g16_b16r16_2plane_422_unorm = 1000156032,
         g16_b16_r16_3plane_444_unorm = 1000156033,
         pvrtc1_2bpp_unorm_block_img = 1000054000,
         pvrtc1_4bpp_unorm_block_img = 1000054001,
         pvrtc2_2bpp_unorm_block_img = 1000054002,
         pvrtc2_4bpp_unorm_block_img = 1000054003,
         pvrtc1_2bpp_srgb_block_img = 1000054004,
         pvrtc1_4bpp_srgb_block_img = 1000054005,
         pvrtc2_2bpp_srgb_block_img = 1000054006,
         pvrtc2_4bpp_srgb_block_img = 1000054007
    static let
            g8b8g8r8_422_unorm_khr = g8b8g8r8_422_unorm,
            b8g8r8g8_422_unorm_khr = b8g8r8g8_422_unorm,
            g8_b8_r8_3plane_420_unorm_khr = g8_b8_r8_3plane_420_unorm,
            g8_b8r8_2plane_420_unorm_khr = g8_b8r8_2plane_420_unorm,
            g8_b8_r8_3plane_422_unorm_khr = g8_b8_r8_3plane_422_unorm,
            g8_b8r8_2plane_422_unorm_khr = g8_b8r8_2plane_422_unorm,
            g8_b8_r8_3plane_444_unorm_khr = g8_b8_r8_3plane_444_unorm,
            r10x6_unorm_pack16_khr = r10x6_unorm_pack16,
            r10x6g10x6_unorm_2pack16_khr = r10x6g10x6_unorm_2pack16,
            r10x6g10x6b10x6a10x6_unorm_4pack16_khr = r10x6g10x6b10x6a10x6_unorm_4pack16,
            g10x6b10x6g10x6r10x6_422_unorm_4pack16_khr = g10x6b10x6g10x6r10x6_422_unorm_4pack16,
            b10x6g10x6r10x6g10x6_422_unorm_4pack16_khr = b10x6g10x6r10x6g10x6_422_unorm_4pack16,
            g10x6_b10x6_r10x6_3plane_420_unorm_3pack16_khr = g10x6_b10x6_r10x6_3plane_420_unorm_3pack16,
            g10x6_b10x6r10x6_2plane_420_unorm_3pack16_khr = g10x6_b10x6r10x6_2plane_420_unorm_3pack16,
            g10x6_b10x6_r10x6_3plane_422_unorm_3pack16_khr = g10x6_b10x6_r10x6_3plane_422_unorm_3pack16,
            g10x6_b10x6r10x6_2plane_422_unorm_3pack16_khr = g10x6_b10x6r10x6_2plane_422_unorm_3pack16,
            g10x6_b10x6_r10x6_3plane_444_unorm_3pack16_khr = g10x6_b10x6_r10x6_3plane_444_unorm_3pack16,
            r12x4_unorm_pack16_khr = r12x4_unorm_pack16,
            r12x4g12x4_unorm_2pack16_khr = r12x4g12x4_unorm_2pack16,
            r12x4g12x4b12x4a12x4_unorm_4pack16_khr = r12x4g12x4b12x4a12x4_unorm_4pack16,
            g12x4b12x4g12x4r12x4_422_unorm_4pack16_khr = g12x4b12x4g12x4r12x4_422_unorm_4pack16,
            b12x4g12x4r12x4g12x4_422_unorm_4pack16_khr = b12x4g12x4r12x4g12x4_422_unorm_4pack16,
            g12x4_b12x4_r12x4_3plane_420_unorm_3pack16_khr = g12x4_b12x4_r12x4_3plane_420_unorm_3pack16,
            g12x4_b12x4r12x4_2plane_420_unorm_3pack16_khr = g12x4_b12x4r12x4_2plane_420_unorm_3pack16,
            g12x4_b12x4_r12x4_3plane_422_unorm_3pack16_khr = g12x4_b12x4_r12x4_3plane_422_unorm_3pack16,
            g12x4_b12x4r12x4_2plane_422_unorm_3pack16_khr = g12x4_b12x4r12x4_2plane_422_unorm_3pack16,
            g12x4_b12x4_r12x4_3plane_444_unorm_3pack16_khr = g12x4_b12x4_r12x4_3plane_444_unorm_3pack16,
            g16b16g16r16_422_unorm_khr = g16b16g16r16_422_unorm,
            b16g16r16g16_422_unorm_khr = b16g16r16g16_422_unorm,
            g16_b16_r16_3plane_420_unorm_khr = g16_b16_r16_3plane_420_unorm,
            g16_b16r16_2plane_420_unorm_khr = g16_b16r16_2plane_420_unorm,
            g16_b16_r16_3plane_422_unorm_khr = g16_b16_r16_3plane_422_unorm,
            g16_b16r16_2plane_422_unorm_khr = g16_b16r16_2plane_422_unorm,
            g16_b16_r16_3plane_444_unorm_khr = g16_b16_r16_3plane_444_unorm
}

enum ImageType: Int32 {
    case _1d = 0,
         _2d = 1,
         _3d = 2
}

enum ImageTiling: Int32 {
    case optimal = 0,
         linear = 1,
         drmFormatModifierExt = 1000158000
}

enum PhysicalDeviceType: Int32 {
    case other = 0,
         integratedGpu = 1,
         discreteGpu = 2,
         virtualGpu = 3,
         cpu = 4
}

enum QueryType: Int32 {
    case occlusion = 0,
         pipelineStatistics = 1,
         timestamp = 2,
         transformFeedbackStreamExt = 1000028004,
         accelerationStructureCompactedSizeNv = 1000165000
}

enum SharingMode: Int32 {
    case exclusive = 0,
         concurrent = 1
}

enum ImageLayout: Int32 {
    case undefined = 0,
         general = 1,
         colorAttachmentOptimal = 2,
         depthStencilAttachmentOptimal = 3,
         depthStencilReadOnlyOptimal = 4,
         shaderReadOnlyOptimal = 5,
         transferSrcOptimal = 6,
         transferDstOptimal = 7,
         preinitialized = 8,
         depthReadOnlyStencilAttachmentOptimal = 1000117000,
         depthAttachmentStencilReadOnlyOptimal = 1000117001,
         presentSrcKhr = 1000001002,
         sharedPresentKhr = 1000111000,
         shadingRateOptimalNv = 1000164003,
         fragmentDensityMapOptimalExt = 1000218000
    static let
            depthReadOnlyStencilAttachmentOptimalKhr = depthReadOnlyStencilAttachmentOptimal,
            depthAttachmentStencilReadOnlyOptimalKhr = depthAttachmentStencilReadOnlyOptimal
}

enum ImageViewType: Int32 {
    case _1d = 0,
         _2d = 1,
         _3d = 2,
         cube = 3,
         _1dArray = 4,
         _2dArray = 5,
         cubeArray = 6
}

enum ComponentSwizzle: Int32 {
    case identity = 0,
         zero = 1,
         one = 2,
         r = 3,
         g = 4,
         b = 5,
         a = 6
}

enum VertexInputRate: Int32 {
    case vertex = 0,
         instance = 1
}

enum PrimitiveTopology: Int32 {
    case pointList = 0,
         lineList = 1,
         lineStrip = 2,
         triangleList = 3,
         triangleStrip = 4,
         triangleFan = 5,
         lineListWithAdjacency = 6,
         lineStripWithAdjacency = 7,
         triangleListWithAdjacency = 8,
         triangleStripWithAdjacency = 9,
         patchList = 10
}

enum PolygonMode: Int32 {
    case fill = 0,
         line = 1,
         point = 2,
         fillRectangleNv = 1000153000
}

enum FrontFace: Int32 {
    case counterClockwise = 0,
         clockwise = 1
}

enum CompareOp: Int32 {
    case never = 0,
         less = 1,
         equal = 2,
         lessOrEqual = 3,
         greater = 4,
         notEqual = 5,
         greaterOrEqual = 6,
         always = 7
}

enum StencilOp: Int32 {
    case keep = 0,
         zero = 1,
         replace = 2,
         incrementAndClamp = 3,
         decrementAndClamp = 4,
         invert = 5,
         incrementAndWrap = 6,
         decrementAndWrap = 7
}

enum LogicOp: Int32 {
    case clear = 0,
         and = 1,
         andReverse = 2,
         copy = 3,
         andInverted = 4,
         noOp = 5,
         xor = 6,
         or = 7,
         nor = 8,
         equivalent = 9,
         invert = 10,
         orReverse = 11,
         copyInverted = 12,
         orInverted = 13,
         nand = 14,
         set = 15
}

enum BlendFactor: Int32 {
    case zero = 0,
         one = 1,
         srcColor = 2,
         oneMinusSrcColor = 3,
         dstColor = 4,
         oneMinusDstColor = 5,
         srcAlpha = 6,
         oneMinusSrcAlpha = 7,
         dstAlpha = 8,
         oneMinusDstAlpha = 9,
         constantColor = 10,
         oneMinusConstantColor = 11,
         constantAlpha = 12,
         oneMinusConstantAlpha = 13,
         srcAlphaSaturate = 14,
         src1Color = 15,
         oneMinusSrc1Color = 16,
         src1Alpha = 17,
         oneMinusSrc1Alpha = 18
}

enum BlendOp: Int32 {
    case add = 0,
         subtract = 1,
         reverseSubtract = 2,
         min = 3,
         max = 4,
         zeroExt = 1000148000,
         srcExt = 1000148001,
         dstExt = 1000148002,
         srcOverExt = 1000148003,
         dstOverExt = 1000148004,
         srcInExt = 1000148005,
         dstInExt = 1000148006,
         srcOutExt = 1000148007,
         dstOutExt = 1000148008,
         srcAtopExt = 1000148009,
         dstAtopExt = 1000148010,
         xorExt = 1000148011,
         multiplyExt = 1000148012,
         screenExt = 1000148013,
         overlayExt = 1000148014,
         darkenExt = 1000148015,
         lightenExt = 1000148016,
         colordodgeExt = 1000148017,
         colorburnExt = 1000148018,
         hardlightExt = 1000148019,
         softlightExt = 1000148020,
         differenceExt = 1000148021,
         exclusionExt = 1000148022,
         invertExt = 1000148023,
         invertRgbExt = 1000148024,
         lineardodgeExt = 1000148025,
         linearburnExt = 1000148026,
         vividlightExt = 1000148027,
         linearlightExt = 1000148028,
         pinlightExt = 1000148029,
         hardmixExt = 1000148030,
         hslHueExt = 1000148031,
         hslSaturationExt = 1000148032,
         hslColorExt = 1000148033,
         hslLuminosityExt = 1000148034,
         plusExt = 1000148035,
         plusClampedExt = 1000148036,
         plusClampedAlphaExt = 1000148037,
         plusDarkerExt = 1000148038,
         minusExt = 1000148039,
         minusClampedExt = 1000148040,
         contrastExt = 1000148041,
         invertOvgExt = 1000148042,
         redExt = 1000148043,
         greenExt = 1000148044,
         blueExt = 1000148045
}

enum DynamicState: Int32 {
    case viewport = 0,
         scissor = 1,
         lineWidth = 2,
         depthBias = 3,
         blendConstants = 4,
         depthBounds = 5,
         stencilCompareMask = 6,
         stencilWriteMask = 7,
         stencilReference = 8,
         viewportWScalingNv = 1000087000,
         discardRectangleExt = 1000099000,
         sampleLocationsExt = 1000143000,
         viewportShadingRatePaletteNv = 1000164004,
         viewportCoarseSampleOrderNv = 1000164006,
         exclusiveScissorNv = 1000205001
}

enum Filter: Int32 {
    case nearest = 0,
         linear = 1,
         cubicImg = 1000015000
    static let
            cubicExt = cubicImg
}

enum SamplerMipmapMode: Int32 {
    case nearest = 0,
         linear = 1
}

enum SamplerAddressMode: Int32 {
    case _repeat = 0,
         mirroredRepeat = 1,
         clampToEdge = 2,
         clampToBorder = 3,
         mirrorClampToEdge = 4
}

enum BorderColor: Int32 {
    case floatTransparentBlack = 0,
         intTransparentBlack = 1,
         floatOpaqueBlack = 2,
         intOpaqueBlack = 3,
         floatOpaqueWhite = 4,
         intOpaqueWhite = 5
}

enum DescriptorType: Int32 {
    case sampler = 0,
         combinedImageSampler = 1,
         sampledImage = 2,
         storageImage = 3,
         uniformTexelBuffer = 4,
         storageTexelBuffer = 5,
         uniformBuffer = 6,
         storageBuffer = 7,
         uniformBufferDynamic = 8,
         storageBufferDynamic = 9,
         inputAttachment = 10,
         inlineUniformBlockExt = 1000138000,
         accelerationStructureNv = 1000165000
}

enum AttachmentLoadOp: Int32 {
    case load = 0,
         clear = 1,
         dontCare = 2
}

enum AttachmentStoreOp: Int32 {
    case store = 0,
         dontCare = 1
}

enum PipelineBindPoint: Int32 {
    case graphics = 0,
         compute = 1,
         rayTracingNv = 1000165000
}

enum CommandBufferLevel: Int32 {
    case primary = 0,
         secondary = 1
}

enum IndexType: Int32 {
    case uint16 = 0,
         uint32 = 1,
         noneNv = 1000165000
}

enum SubpassContents: Int32 {
    case inline = 0,
         secondaryCommandBuffers = 1
}

enum ObjectType: Int32 {
    case unknown = 0,
         instance = 1,
         physicalDevice = 2,
         device = 3,
         queue = 4,
         semaphore = 5,
         commandBuffer = 6,
         fence = 7,
         deviceMemory = 8,
         buffer = 9,
         image = 10,
         event = 11,
         queryPool = 12,
         bufferView = 13,
         imageView = 14,
         shaderModule = 15,
         pipelineCache = 16,
         pipelineLayout = 17,
         renderPass = 18,
         pipeline = 19,
         descriptorSetLayout = 20,
         sampler = 21,
         descriptorPool = 22,
         descriptorSet = 23,
         framebuffer = 24,
         commandPool = 25,
         samplerYcbcrConversion = 1000156000,
         descriptorUpdateTemplate = 1000085000,
         surfaceKhr = 1000000000,
         swapchainKhr = 1000001000,
         displayKhr = 1000002000,
         displayModeKhr = 1000002001,
         debugReportCallbackExt = 1000011000,
         objectTableNvx = 1000086000,
         indirectCommandsLayoutNvx = 1000086001,
         debugUtilsMessengerExt = 1000128000,
         validationCacheExt = 1000160000,
         accelerationStructureNv = 1000165000
    static let
            descriptorUpdateTemplateKhr = descriptorUpdateTemplate,
            samplerYcbcrConversionKhr = samplerYcbcrConversion
}

enum VendorId: Int32 {
    case viv = 0x10001,
         vsi = 0x10002,
         kazan = 0x10003
}

typealias InstanceCreateFlags = Flags

struct FormatFeature: OptionSet {

    let rawValue: Int32

    static let
            sampledImageBit = FormatFeature(rawValue: 0x00000001),
            storageImageBit = FormatFeature(rawValue: 0x00000002),
            storageImageAtomicBit = FormatFeature(rawValue: 0x00000004),
            uniformTexelBufferBit = FormatFeature(rawValue: 0x00000008),
            storageTexelBufferBit = FormatFeature(rawValue: 0x00000010),
            storageTexelBufferAtomicBit = FormatFeature(rawValue: 0x00000020),
            vertexBufferBit = FormatFeature(rawValue: 0x00000040),
            colorAttachmentBit = FormatFeature(rawValue: 0x00000080),
            colorAttachmentBlendBit = FormatFeature(rawValue: 0x00000100),
            depthStencilAttachmentBit = FormatFeature(rawValue: 0x00000200),
            blitSrcBit = FormatFeature(rawValue: 0x00000400),
            blitDstBit = FormatFeature(rawValue: 0x00000800),
            sampledImageFilterLinearBit = FormatFeature(rawValue: 0x00001000),
            transferSrcBit = FormatFeature(rawValue: 0x00004000),
            transferDstBit = FormatFeature(rawValue: 0x00008000),
            midpointChromaSamplesBit = FormatFeature(rawValue: 0x00020000),
            sampledImageYcbcrConversionLinearFilterBit = FormatFeature(rawValue: 0x00040000),
            sampledImageYcbcrConversionSeparateReconstructionFilterBit = FormatFeature(rawValue: 0x00080000),
            sampledImageYcbcrConversionChromaReconstructionExplicitBit = FormatFeature(rawValue: 0x00100000),
            sampledImageYcbcrConversionChromaReconstructionExplicitForceableBit = FormatFeature(rawValue: 0x00200000),
            disjointBit = FormatFeature(rawValue: 0x00400000),
            cositedChromaSamplesBit = FormatFeature(rawValue: 0x00800000),
            sampledImageFilterCubicBitImg = FormatFeature(rawValue: 0x00002000),
            sampledImageFilterMinmaxBitExt = FormatFeature(rawValue: 0x00010000),
            fragmentDensityMapBitExt = FormatFeature(rawValue: 0x01000000),
            transferSrcBitKhr = transferSrcBit,
            transferDstBitKhr = transferDstBit,
            midpointChromaSamplesBitKhr = midpointChromaSamplesBit,
            sampledImageYcbcrConversionLinearFilterBitKhr = sampledImageYcbcrConversionLinearFilterBit,
            sampledImageYcbcrConversionSeparateReconstructionFilterBitKhr = sampledImageYcbcrConversionSeparateReconstructionFilterBit,
            sampledImageYcbcrConversionChromaReconstructionExplicitBitKhr = sampledImageYcbcrConversionChromaReconstructionExplicitBit,
            sampledImageYcbcrConversionChromaReconstructionExplicitForceableBitKhr = sampledImageYcbcrConversionChromaReconstructionExplicitForceableBit,
            disjointBitKhr = disjointBit,
            cositedChromaSamplesBitKhr = cositedChromaSamplesBit,
            sampledImageFilterCubicBitExt = sampledImageFilterCubicBitImg
}

struct ImageUsage: OptionSet {

    let rawValue: Int32

    static let
            transferSrcBit = ImageUsage(rawValue: 0x00000001),
            transferDstBit = ImageUsage(rawValue: 0x00000002),
            sampledBit = ImageUsage(rawValue: 0x00000004),
            storageBit = ImageUsage(rawValue: 0x00000008),
            colorAttachmentBit = ImageUsage(rawValue: 0x00000010),
            depthStencilAttachmentBit = ImageUsage(rawValue: 0x00000020),
            transientAttachmentBit = ImageUsage(rawValue: 0x00000040),
            inputAttachmentBit = ImageUsage(rawValue: 0x00000080),
            shadingRateImageBitNv = ImageUsage(rawValue: 0x00000100),
            fragmentDensityMapBitExt = ImageUsage(rawValue: 0x00000200)
}

struct ImageCreate: OptionSet {

    let rawValue: Int32

    static let
            sparseBindingBit = ImageCreate(rawValue: 0x00000001),
            sparseResidencyBit = ImageCreate(rawValue: 0x00000002),
            sparseAliasedBit = ImageCreate(rawValue: 0x00000004),
            mutableFormatBit = ImageCreate(rawValue: 0x00000008),
            cubeCompatibleBit = ImageCreate(rawValue: 0x00000010),
            aliasBit = ImageCreate(rawValue: 0x00000400),
            splitInstanceBindRegionsBit = ImageCreate(rawValue: 0x00000040),
            _2dArrayCompatibleBit = ImageCreate(rawValue: 0x00000020),
            blockTexelViewCompatibleBit = ImageCreate(rawValue: 0x00000080),
            extendedUsageBit = ImageCreate(rawValue: 0x00000100),
            protectedBit = ImageCreate(rawValue: 0x00000800),
            disjointBit = ImageCreate(rawValue: 0x00000200),
            cornerSampledBitNv = ImageCreate(rawValue: 0x00002000),
            sampleLocationsCompatibleDepthBitExt = ImageCreate(rawValue: 0x00001000),
            subsampledBitExt = ImageCreate(rawValue: 0x00004000),
            splitInstanceBindRegionsBitKhr = splitInstanceBindRegionsBit,
            _2dArrayCompatibleBitKhr = _2dArrayCompatibleBit,
            blockTexelViewCompatibleBitKhr = blockTexelViewCompatibleBit,
            extendedUsageBitKhr = extendedUsageBit,
            disjointBitKhr = disjointBit,
            aliasBitKhr = aliasBit
}

struct SampleCount: OptionSet {

    let rawValue: Int32

    static let
            _1_BIT = SampleCount(rawValue: 0x00000001),
            _2_BIT = SampleCount(rawValue: 0x00000002),
            _4_BIT = SampleCount(rawValue: 0x00000004),
            _8_BIT = SampleCount(rawValue: 0x00000008),
            _16_BIT = SampleCount(rawValue: 0x00000010),
            _32_BIT = SampleCount(rawValue: 0x00000020),
            _64_BIT = SampleCount(rawValue: 0x00000040)
}

struct QueueBit: OptionSet {

    let rawValue: Int32

    static let
            graphicsBit = QueueBit(rawValue: 0x00000001),
            computeBit = QueueBit(rawValue: 0x00000002),
            transferBit = QueueBit(rawValue: 0x00000004),
            sparseBindingBit = QueueBit(rawValue: 0x00000008),
            protectedBit = QueueBit(rawValue: 0x00000010)
}

struct MemoryProperty: OptionSet {

    let rawValue: Int32

    static let
            deviceLocalBit = MemoryProperty(rawValue: 0x00000001),
            hostVisibleBit = MemoryProperty(rawValue: 0x00000002),
            hostCoherentBit = MemoryProperty(rawValue: 0x00000004),
            hostCachedBit = MemoryProperty(rawValue: 0x00000008),
            lazilyAllocatedBit = MemoryProperty(rawValue: 0x00000010),
            protectedBit = MemoryProperty(rawValue: 0x00000020)
}

struct MemoryHeap: OptionSet {

    let rawValue: Int32

    static let
            deviceLocalBit = MemoryHeap(rawValue: 0x00000001),
            multiInstanceBit = MemoryHeap(rawValue: 0x00000002),
            multiInstanceBitKhr = multiInstanceBit
}

typealias DeviceCreateFlags = Flags

struct DeviceQueueCreate: OptionSet {

    let rawValue: Int32

    static let
            protectedBit = DeviceQueueCreate(rawValue: 0x00000001)
}

struct PipelineStage: OptionSet {

    let rawValue: Int32

    static let
            topOfPipeBit = PipelineStage(rawValue: 0x00000001),
            drawIndirectBit = PipelineStage(rawValue: 0x00000002),
            vertexInputBit = PipelineStage(rawValue: 0x00000004),
            vertexShaderBit = PipelineStage(rawValue: 0x00000008),
            tessellationControlShaderBit = PipelineStage(rawValue: 0x00000010),
            tessellationEvaluationShaderBit = PipelineStage(rawValue: 0x00000020),
            geometryShaderBit = PipelineStage(rawValue: 0x00000040),
            fragmentShaderBit = PipelineStage(rawValue: 0x00000080),
            earlyFragmentTestsBit = PipelineStage(rawValue: 0x00000100),
            lateFragmentTestsBit = PipelineStage(rawValue: 0x00000200),
            colorAttachmentOutputBit = PipelineStage(rawValue: 0x00000400),
            computeShaderBit = PipelineStage(rawValue: 0x00000800),
            transferBit = PipelineStage(rawValue: 0x00001000),
            bottomOfPipeBit = PipelineStage(rawValue: 0x00002000),
            hostBit = PipelineStage(rawValue: 0x00004000),
            allGraphicsBit = PipelineStage(rawValue: 0x00008000),
            allCommandsBit = PipelineStage(rawValue: 0x00010000),
            transformFeedbackBitExt = PipelineStage(rawValue: 0x01000000),
            conditionalRenderingBitExt = PipelineStage(rawValue: 0x00040000),
            commandProcessBitNvx = PipelineStage(rawValue: 0x00020000),
            shadingRateImageBitNv = PipelineStage(rawValue: 0x00400000),
            rayTracingShaderBitNv = PipelineStage(rawValue: 0x00200000),
            accelerationStructureBuildBitNv = PipelineStage(rawValue: 0x02000000),
            taskShaderBitNv = PipelineStage(rawValue: 0x00080000),
            meshShaderBitNv = PipelineStage(rawValue: 0x00100000),
            fragmentDensityProcessBitExt = PipelineStage(rawValue: 0x00800000)
}

typealias MemoryMapFlags = Flags

struct ImageAspect: OptionSet {

    let rawValue: Int32

    static let
            colorBit = ImageAspect(rawValue: 0x00000001),
            depthBit = ImageAspect(rawValue: 0x00000002),
            stencilBit = ImageAspect(rawValue: 0x00000004),
            metadataBit = ImageAspect(rawValue: 0x00000008),
            plane0Bit = ImageAspect(rawValue: 0x00000010),
            plane1Bit = ImageAspect(rawValue: 0x00000020),
            plane2Bit = ImageAspect(rawValue: 0x00000040),
            memoryPlane0BitExt = ImageAspect(rawValue: 0x00000080),
            memoryPlane1BitExt = ImageAspect(rawValue: 0x00000100),
            memoryPlane2BitExt = ImageAspect(rawValue: 0x00000200),
            memoryPlane3BitExt = ImageAspect(rawValue: 0x00000400),
            plane0BitKhr = plane0Bit,
            plane1BitKhr = plane1Bit,
            plane2BitKhr = plane2Bit
}

struct SparseImageFormat: OptionSet {

    let rawValue: Int32

    static let
            SINGLE_MIPTAIL_BIT = SparseImageFormat(rawValue: 0x00000001),
            ALIGNED_MIP_SIZE_BIT = SparseImageFormat(rawValue: 0x00000002),
            NONSTANDARD_BLOCK_SIZE_BIT = SparseImageFormat(rawValue: 0x00000004)
}

struct SparseMemoryBind: OptionSet {

    let rawValue: Int32

    static let
            metadataBit = SparseMemoryBind(rawValue: 0x00000001)
}

struct FenceCreate: OptionSet {

    let rawValue: Int32

    static let
            signaledBit = FenceCreate(rawValue: 0x00000001)
}

typealias SemaphoreCreateFlags = Flags
typealias EventCreateFlags = Flags
typealias QueryPoolCreateFlags = Flags

struct QueryPipelineStatistic: OptionSet {

    let rawValue: Int32

    static let
            inputAssemblyVerticesBit = QueryPipelineStatistic(rawValue: 0x00000001),
            inputAssemblyPrimitivesBit = QueryPipelineStatistic(rawValue: 0x00000002),
            vertexShaderInvocationsBit = QueryPipelineStatistic(rawValue: 0x00000004),
            geometryShaderInvocationsBit = QueryPipelineStatistic(rawValue: 0x00000008),
            geometryShaderPrimitivesBit = QueryPipelineStatistic(rawValue: 0x00000010),
            clippingInvocationsBit = QueryPipelineStatistic(rawValue: 0x00000020),
            clippingPrimitivesBit = QueryPipelineStatistic(rawValue: 0x00000040),
            fragmentShaderInvocationsBit = QueryPipelineStatistic(rawValue: 0x00000080),
            tessellationControlShaderPatchesBit = QueryPipelineStatistic(rawValue: 0x00000100),
            tessellationEvaluationShaderInvocationsBit = QueryPipelineStatistic(rawValue: 0x00000200),
            computeShaderInvocationsBit = QueryPipelineStatistic(rawValue: 0x00000400)
}

struct QueryResult: OptionSet {

    let rawValue: Int32

    static let
            _64Bit = QueryResult(rawValue: 0x00000001),
            waitBit = QueryResult(rawValue: 0x00000002),
            withAvailabilityBit = QueryResult(rawValue: 0x00000004),
            partialBit = QueryResult(rawValue: 0x00000008)
}

struct BufferCreate: OptionSet {

    let rawValue: Int32

    static let
            sparseBindingBit = BufferCreate(rawValue: 0x00000001),
            sparseResidencyBit = BufferCreate(rawValue: 0x00000002),
            sparseAliasedBit = BufferCreate(rawValue: 0x00000004),
            protectedBit = BufferCreate(rawValue: 0x00000008),
            deviceAddressCaptureReplayBitExt = BufferCreate(rawValue: 0x00000010)
}

struct BufferUsage: OptionSet {

    let rawValue: Int32

    static let
            transferSrcBit = BufferUsage(rawValue: 0x00000001),
            transferDstBit = BufferUsage(rawValue: 0x00000002),
            uniformTexelBufferBit = BufferUsage(rawValue: 0x00000004),
            storageTexelBufferBit = BufferUsage(rawValue: 0x00000008),
            uniformBufferBit = BufferUsage(rawValue: 0x00000010),
            storageBufferBit = BufferUsage(rawValue: 0x00000020),
            indexBufferBit = BufferUsage(rawValue: 0x00000040),
            vertexBufferBit = BufferUsage(rawValue: 0x00000080),
            indirectBufferBit = BufferUsage(rawValue: 0x00000100),
            transformFeedbackBufferBitExt = BufferUsage(rawValue: 0x00000800),
            transformFeedbackCounterBufferBitExt = BufferUsage(rawValue: 0x00001000),
            conditionalRenderingBitExt = BufferUsage(rawValue: 0x00000200),
            rayTracingBitNv = BufferUsage(rawValue: 0x00000400),
            shaderDeviceAddressBitExt = BufferUsage(rawValue: 0x00020000)
}

typealias BufferViewCreateFlags = Flags

struct ImageViewCreate: OptionSet {

    let rawValue: Int32

    static let
            fragmentDensityMapDynamicBitExt = ImageViewCreate(rawValue: 0x00000001)
}

typealias ShaderModuleCreate = Flags
typealias PipelineCacheCreate = Flags

struct PipelineCreate: OptionSet {

    let rawValue: Int32

    static let
            disableOptimizationBit = PipelineCreate(rawValue: 0x00000001),
            allowDerivativesBit = PipelineCreate(rawValue: 0x00000002),
            derivativeBit = PipelineCreate(rawValue: 0x00000004),
            viewIndexFromDeviceIndexBit = PipelineCreate(rawValue: 0x00000008),
            dispatchBase = PipelineCreate(rawValue: 0x00000010),
            deferCompileBitNv = PipelineCreate(rawValue: 0x00000020),
            viewIndexFromDeviceIndexBitKhr = viewIndexFromDeviceIndexBit,
            dispatchBaseKhr = dispatchBase
}

typealias PipelineShaderStageCreate = Flags

struct ShaderStage: OptionSet {

    let rawValue: Int32

    static let
            vertexBit = ShaderStage(rawValue: 0x00000001),
            tessellationControlBit = ShaderStage(rawValue: 0x00000002),
            tessellationEvaluationBit = ShaderStage(rawValue: 0x00000004),
            geometryBit = ShaderStage(rawValue: 0x00000008),
            fragmentBit = ShaderStage(rawValue: 0x00000010),
            computeBit = ShaderStage(rawValue: 0x00000020),
            allGraphics = ShaderStage(rawValue: 0x0000001F),
            all = ShaderStage(rawValue: 0x7FFFFFFF),
            raygenBitNv = ShaderStage(rawValue: 0x00000100),
            anyHitBitNv = ShaderStage(rawValue: 0x00000200),
            closestHitBitNv = ShaderStage(rawValue: 0x00000400),
            missBitNv = ShaderStage(rawValue: 0x00000800),
            intersectionBitNv = ShaderStage(rawValue: 0x00001000),
            callableBitNv = ShaderStage(rawValue: 0x00002000),
            taskBitNv = ShaderStage(rawValue: 0x00000040),
            meshBitNv = ShaderStage(rawValue: 0x00000080)
}

typealias PipelineVertexInputStateCreate = Flags
typealias PipelineInputAssemblyStateCreate = Flags
typealias PipelineTessellationStateCreate = Flags
typealias PipelineViewportStateCreate = Flags
typealias PipelineRasterizationStateCreate = Flags

struct CullMode: OptionSet {

    let rawValue: Int32

    static let
            none = CullMode(rawValue: 0),
            frontBit = CullMode(rawValue: 0x00000001),
            backBit = CullMode(rawValue: 0x00000002),
            frontAndBack = CullMode(rawValue: 0x00000003)
}

typealias PipelineMultisampleStateCreate = Flags
typealias PipelineDepthStencilStateCreate = Flags
typealias PipelineColorBlendStateCreate = Flags

struct ColorComponent: OptionSet {

    let rawValue: Int32

    static let
            rBit = ColorComponent(rawValue: 0x00000001),
            gBit = ColorComponent(rawValue: 0x00000002),
            bBit = ColorComponent(rawValue: 0x00000004),
            aBit = ColorComponent(rawValue: 0x00000008)
}

typealias PipelineDynamicStateCreate = Flags
typealias PipelineLayoutCreate = Flags

struct SamplerCreate: OptionSet {

    let rawValue: Int32

    static let
            subsampledBitExt = SamplerCreate(rawValue: 0x00000001),
            subsampledCoarseReconstructionBitExt = SamplerCreate(rawValue: 0x00000002)
}

struct DescriptorSetLayoutCreate: OptionSet {

    let rawValue: Int32

    static let
            pushDescriptorBitKhr = DescriptorSetLayoutCreate(rawValue: 0x00000001),
            updateAfterBindPoolBitExt = DescriptorSetLayoutCreate(rawValue: 0x00000002)
}

struct DescriptorPoolCreate: OptionSet {

    let rawValue: Int32

    static let
            freeDescriptorSetBit = DescriptorPoolCreate(rawValue: 0x00000001),
            updateAfterBindBitExt = DescriptorPoolCreate(rawValue: 0x00000002)
}

typealias DescriptorPoolReset = Flags
typealias FramebufferCreate = Flags
typealias RenderPassCreate = Flags

struct AttachmentDescription: OptionSet {

    let rawValue: Int32

    static let
            mayAliasBit = AttachmentDescription(rawValue: 0x00000001)
}

struct SubpassDescription: OptionSet {

    let rawValue: Int32

    static let
            perViewAttributesBitNvx = SubpassDescription(rawValue: 0x00000001),
            perViewPositionXOnlyBitNvx = SubpassDescription(rawValue: 0x00000002)
}

struct Access: OptionSet {

    let rawValue: Int32

    static let
            indirectCommandReadBit = Access(rawValue: 0x00000001),
            indexReadBit = Access(rawValue: 0x00000002),
            vertexAttributeReadBit = Access(rawValue: 0x00000004),
            uniformReadBit = Access(rawValue: 0x00000008),
            inputAttachmentReadBit = Access(rawValue: 0x00000010),
            shaderReadBit = Access(rawValue: 0x00000020),
            shaderWriteBit = Access(rawValue: 0x00000040),
            colorAttachmentReadBit = Access(rawValue: 0x00000080),
            colorAttachmentWriteBit = Access(rawValue: 0x00000100),
            depthStencilAttachmentReadBit = Access(rawValue: 0x00000200),
            depthStencilAttachmentWriteBit = Access(rawValue: 0x00000400),
            transferReadBit = Access(rawValue: 0x00000800),
            transferWriteBit = Access(rawValue: 0x00001000),
            hostReadBit = Access(rawValue: 0x00002000),
            hostWriteBit = Access(rawValue: 0x00004000),
            memoryReadBit = Access(rawValue: 0x00008000),
            memoryWriteBit = Access(rawValue: 0x00010000),
            transformFeedbackWriteBitExt = Access(rawValue: 0x02000000),
            transformFeedbackCounterReadBitExt = Access(rawValue: 0x04000000),
            transformFeedbackCounterWriteBitExt = Access(rawValue: 0x08000000),
            conditionalRenderingReadBitExt = Access(rawValue: 0x00100000),
            commandProcessReadBitNvx = Access(rawValue: 0x00020000),
            commandProcessWriteBitNvx = Access(rawValue: 0x00040000),
            colorAttachmentReadNoncoherentBitExt = Access(rawValue: 0x00080000),
            shadingRateImageReadBitNv = Access(rawValue: 0x00800000),
            accelerationStructureReadBitNv = Access(rawValue: 0x00200000),
            accelerationStructureWriteBitNv = Access(rawValue: 0x00400000),
            fragmentDensityMapReadBitExt = Access(rawValue: 0x01000000)
}

struct Dependency: OptionSet {

    let rawValue: Int32

    static let
            byRegionBit = Dependency(rawValue: 0x00000001),
            deviceGroupBit = Dependency(rawValue: 0x00000004),
            viewLocalBit = Dependency(rawValue: 0x00000002),
            ViewLocalBitKhr = viewLocalBit,
            deviceGroupBitKhr = deviceGroupBit
}

struct CommandPoolCreate: OptionSet {

    let rawValue: Int32

    static let
            transientBit = CommandPoolCreate(rawValue: 0x00000001),
            resetCommandBufferBit = CommandPoolCreate(rawValue: 0x00000002),
            protectedBit = CommandPoolCreate(rawValue: 0x00000004)
}

struct CommandPoolReset: OptionSet {

    let rawValue: Int32

    static let
            releaseResourcesBit = CommandPoolReset(rawValue: 0x00000001)
}

struct CommandBufferUsage: OptionSet {

    let rawValue: Int32

    static let
            oneTimeSubmitBit = CommandBufferUsage(rawValue: 0x00000001),
            renderPassContinueBit = CommandBufferUsage(rawValue: 0x00000002),
            simultaneousUseBit = CommandBufferUsage(rawValue: 0x00000004)
}

struct QueryControl: OptionSet {

    let rawValue: Int32

    static let
            preciseBit = QueryControl(rawValue: 0x00000001)
}

struct CommandBufferReset: OptionSet {

    let rawValue: Int32

    static let
            releaseResourcesBit = CommandBufferReset(rawValue: 0x00000001)
}

struct StencilFace: OptionSet {

    let rawValue: Int32

    static let
            faceFrontBit = StencilFace(rawValue: 0x00000001),
            faceBackBit = StencilFace(rawValue: 0x00000002),
            frontAndBack = StencilFace(rawValue: 0x00000003)
}