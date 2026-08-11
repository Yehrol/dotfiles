function getHostname()
    local f = io.popen ("/bin/hostname")
    local hostname = f:read("*a") or ""
    f:close()
    hostname =string.gsub(hostname, "\n$", "")
    return hostname
end

function getHostnameSuffix()
	local hostname = getHostname()
    return hostname:match("%-(.*)")
end