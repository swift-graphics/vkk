import vulkan

struct vk {

    private init() {
    }

    static func ApplicationInfo() -> VkApplicationInfo {
        var res = VkApplicationInfo()
        res.sType = VK_STRUCTURE_TYPE_APPLICATION_INFO
        return res
    }
}

var instance: VkInstance?