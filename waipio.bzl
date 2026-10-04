load(":synx_modules.bzl", "synx_v1_modules")
load(":synx_module_build.bzl", "define_target_variant_modules")

def define_waipio():
    define_target_variant_modules(
        target = "waipio",
        variant = "perf",
        registry = synx_v1_modules,
        modules = [
            "qcom_ipc_lite",
            "synx-driver",
        ],
        config_options = [
            "CONFIG_MSM_GLOBAL_SYNX",
            "TARGET_SYNX_ENABLE",
        ],
    )
