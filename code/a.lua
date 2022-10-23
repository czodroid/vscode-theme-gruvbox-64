#! /usr/bin/env lua

-- Filename: a.lua
-- Author: Olivier Sirol <czo@free.fr>
-- License: GPL-2.0 (http://www.gnu.org/copyleft)
-- File Created: 23 October 2022
-- Last Modified: Sunday 23 October 2022, 12:21
-- $Id:$
-- Edit Time: 0:00:12
-- Description:
--
-- Copyright: (C) 2022 Olivier Sirol <czo@free.fr>

function cat(file, bufsize)
    if not bufsize then bufsize = 8192 end
    local f = io.open(file)
    if not f then return false end
    local buffer
    for buffer in f:lines(bufsize) do
        io.write(buffer)
    end
    io.close(f)
    return true
end

if #arg == 0 then
    arg[1] = "/dev/stdin"
end

for i, File in ipairs(arg) do
    cat(File)
end

