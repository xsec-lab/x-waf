--[[

Copyright (c) 2016 xsec.io

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THEq
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

]]

-- WAF config file, enable = "on", disable = "off"

local _M = {
    -- waf status
    config_waf_enable = "on",
    -- log dir
    config_log_dir = "/var/log/waf_logs",
    -- rule setting
    config_rule_dir = "/usr/local/openresty/nginx/conf/x-waf/rules",
    -- enable/disable referer filtering
    config_referer_check = "on",
    -- enable/disable white url
    config_white_url_check = "on",
    -- enable/disable white ip
    config_white_ip_check = "on",
    -- enable/disable block ip
    config_black_ip_check = "on",
    -- enable/disable url filtering
    config_url_check = "on",
    -- enalbe/disable url args filtering
    config_url_args_check = "on",
    -- enable/disable user agent filtering
    config_user_agent_check = "on",
    -- enable/disable cookie deny filtering
    config_cookie_check = "on",
    -- enable/disable cc filtering
    config_cc_check = "on",
    -- cc token store mode ipurl/ip
    config_cc_mode = "ip",
    -- cc rate for ip mode the xxx of xxx seconds
    config_cc_rate_ip = "150/60",
    -- cc rate for ip+url mode the xxx of xxx seconds
    config_cc_rate_ipurl = "10/60",
    -- enable/disable post filtering
    config_post_check = "on",
    -- config waf output reset/redirect/html/jinghuashuiyue
    config_waf_model = "reset",
    -- if config_waf_output ,setting url
    config_waf_redirect_url = "http://lab.acgdraw.com",
    config_expire_time = 600,
    config_output_html=[[
      <meta charset="utf-8"/><pre>

      错误代码：MA-SEC-MAID401

      错误描述：您的操作未被授权，欢迎在遵守白帽子职业道德准则的前提
                下进行相关的安全测试。同时欢迎在网站首页右下角的反馈
                按钮（纸飞机）或者在补天漏洞响应平台将漏洞信息反馈给
                我们。

      错误来源：您(%s) <-> 萌绘图站女仆酱
      ______________________________________________________________
                                          萌绘图站 - www.acgdraw.com
    ]],
}

return _M
