//
// Created by elect on 03/10/19.
//

import Foundation
import glm
import vulkan


extension VkInstance {
    func destroy() {
        vkDestroyInstance(self, nil)
    }
}