# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule patch_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("patch")
JLLWrappers.@generate_main_file("patch", UUID("c7bec4a6-5215-51fd-b0a3-64ceaaad3a34"))
end  # module patch_jll
