name = "基地岛_自用"
description = "Create a land for building your home"
author = "肉丸"
version = "21.7.20" --更新日期

forumthread = ""

api_version = 6
api_version_dst = 10

dst_compatible = true

dont_starve_compatible = false
reign_of_giants_compatible = false
shipwrecked_compatible = false

all_clients_require_mod = true

icon_atlas = "modicon_theme.xml"
icon = "modicon_theme.tex"

priority = -1999999999 --大于人物mod
server_filter_tags = {
    --??
}

configuration_options =
{
    {
        name = "LandType",
        label = "LandType",
        hover = "基地类型",
        options =
        {
            {description = "类型一", data = "land_one"},
            {description = "类型二", data = "land_two"}
            --{description = "类型三", data = "land_three"},
            --{description = "类型四", data = 'land_four'}
        },
        default = "land_one",
    }
}

--禁用动态加载
StaticAssetsReg = {'gourd'}