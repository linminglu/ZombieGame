
--101   玩家攻击怪物 会让怪物产生很短的暂停
--102   眩晕
G_BuffConfig = {
    {id = 101, during = 0.2, isImage = true, isAnimal = false},
    {id = 102, during = 1,   isImage = true, isAnimal = false},
}




--type 两种类型，skill，技能里面也可能自带buff           buff则只添加buff ，
G_PropConfig = {
    {["id"] = 10001, ["type"] = "skill", ["skillId"] = 0, ["buffId"] = 0,},
    {["id"] = 10002, ["type"] = "skill", ["skillId"] = 6003, ["buffId"] = 0,},
    {["id"] = 10003, ["type"] = "skill", ["skillId"] = 7003, ["buffId"] = 0,},
    {["id"] = 10004, ["type"] = "buff", ["skillId"] = 0, ["buffId"] = 50002,},
    {["id"] = 10005, ["type"] = "buff", ["skillId"] = 0, ["buffId"] = 50003,},
}










--[[
chapterConfig = {
    [1] = {
        {[delay] = value, [monsterList] = {{delay, count, monsterId}, {delay, count, monsterId}}}
        {[delay] = value, [monsterList] = {{delay, count, monsterId}, {delay, count, monsterId}}}
    }
    [2] = {
    }
}
小怪
1、围攻类型，所有怪物出来的时间很近       （简单  给能量快  ）
2、挨个延时出现 所有怪物延时时间比较长    （相对1难些 能量慢）

大怪
1、围攻类型 所有怪物出来的时间很近        （难，相对而言 这个比较是最难的 大怪的血量高  ）
2、挨个延时出现 所有怪物延时时间比较长     （相对1比较简单些， 玩家挨个打就是了）

姑且先将怪物分为 A、B、C、D、E、F、G、H  血量 速度  待定


设计关卡规则   第一波 给能量  第二波 出大怪  第三波 大怪和 小怪 一起出 ，同时根据实际情况 来给定难度 是围攻还是挨个
-- ]]


G_ChapterConfig = {
    --第一章
    [1] = {    --monsterId 1, 2, 3
        {["delay"] = 2 , ["monsterList"]={{0.5, 2, 5001},{2, 2, 5001},{5, 2, 5001},{8, 2, 5001},{12, 1, 5001}}},
        {["delay"] = 2 , ["monsterList"]={{0.5, 2, 5001}, {3, 2, 5001}, {9, 1, 5002}}},
        {["delay"] = 2 , ["monsterList"]={{0.5, 3, 5001},{3, 3, 5001},{8, 2, 5001},{13, 4, 5001},{19, 2, 5003}}},
    },

    [2] = {      --monsterId 1, 3, 4
        {["delay"] = 2 , ["monsterList"]={{0.5, 2, 5001},{2, 2, 5001},{5, 2, 5001},{8, 3, 5002},{12, 5, 5001}}},
        {["delay"] = 2 , ["monsterList"]={{0.5, 1, 5003}, {4, 1, 5003}, {8, 1, 5003}, {12, 1, 5003}}},
        {["delay"] = 2 , ["monsterList"]={{0.5, 4, 5001},{4, 4, 5001},{8, 1, 5003},{12, 3, 5011},{17, 2, 5003}}},
        {["delay"] = 2 , ["monsterList"]={{0.5, 4, 5001},{4, 4, 5001},{8, 4, 5034},{12, 3, 5011},{17, 2, 5003}}},
    },

    [3] = {  --monsterId 1, 3, 4
        {["delay"] = 2 , ["monsterList"]={{0.5, 2, 5001},{2, 2, 5001},{5, 2, 5001},{8, 2, 5001},{12, 5, 5011}}},
        {["delay"] = 2 , ["monsterList"]={{0.5, 1, 5003}, {4, 1, 5003}, {8, 1, 5003}, {12, 2, 5003}}},
        {["delay"] = 2 , ["monsterList"]={{0.5, 4, 5001},{4, 4, 5011},{8, 1, 5003},{12, 3, 5011},{17, 3, 5003}}},
        {["delay"] = 2 , ["monsterList"]={{0.5, 4, 5001},{4, 4, 5071},{8, 1, 5003},{10, 4, 5071},{12, 3, 5011},{17, 3, 5003}}},
    },

    [4] = {  --monsterId 1, 3, 4, 5
        {["delay"] = 2 , ["monsterList"]={{0.5, 2, 5001},{2, 2, 5001},{5, 2, 5011},{8, 2, 5001},{12, 5, 5011}}},
        {["delay"] = 2 , ["monsterList"]={{0.5, 1, 5003}, {4, 2, 5003}, {8, 1, 5003}, {13, 2, 5012}}},
        {["delay"] = 2 , ["monsterList"]={{0.5, 4, 5001},{4, 4, 5011},{8, 2, 5003},{12, 3, 5011},{16, 2, 5061},{20, 5, 5012}}},
        {["delay"] = 2 , ["monsterList"]={{0.5, 4, 5001},{4, 4, 5011},{8, 6, 5046},{12, 3, 5011},{16, 3, 5012},{20, 1, 5052}}},
    },
}



