package("foo")
    set_description("The foo package")

    add_urls("https://github.com/mccakit/xmake_remote_package_tutorial_source.git")
    add_versions("1.0.0", "v1.0.0")

    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        import("package.tools.xmake").install(package, configs)
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        -- assert(package:has_cfuncs("foo", {includes = "foo.h"})
    end)
