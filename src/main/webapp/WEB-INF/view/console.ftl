<#assign howbuywebsite = "auth/howbuywebsite" />
<#assign routemanager="routemanager" />

<#assign opennorms = {
					"drkh":"开户人数",
					"drscyk":"验卡人数",
					"drscbk":"绑卡人数",
					"drscjq":"鉴权人数",
					"drkhdrbk":"当日开户绑卡人数",
					"drkhdryk":"当日开户验卡人数",
					"drkhdrjq":"当日开户鉴权人数",
					"drkhbkl":"当日开户绑卡率",
					"drkhykl":"当日开户验卡率",
					"drkhjql":"当日开户鉴权率",
					"drxdrs":"下单人数",
					"drxdje":"下单金额",
					"drxdbs":"下单笔数",
					"rjxdje":"人均下单金额",
					"drzfrs":"支付人数",
					"drzfje":"支付金额",
					"drzfbs":"支付笔数",
					"rjzfje":"人均支付金额",
					"drqrjycjrs":"成交人数",
					"drqrjycjje":"成交金额",
					"drqrjycjbs":"成交笔数",
					"rjcjje":"人均成交金额",
					"drkhdrjyje":"当日开户当日交易金额",
					"drkhdrjyrs":"当日开户当日交易人数",
					"drkhjyl":"当日开户交易率",
					"drxzjyje":"当日新增交易金额",
					"drxzjyrs":"当日新增交易人数"
} />
<#assign tradenorms = {
					"drxdrs":"下单人数",
					"drxdje":"下单金额",
					"drxdbs":"下单笔数",
					"rjxdje":"人均下单金额",
					"drzfrs":"支付人数",
					"drzfje":"支付金额",
					"drzfbs":"支付笔数",
					"rjzfje":"人均支付金额",
					"drqrjycjrs":"成交人数",
					"drqrjycjje":"成交金额",
					"drqrjycjbs":"成交笔数",
					"rjcjje":"人均成交金额",
					"drxzjyje":"当日新增交易金额",
					"drxzjyrs":"当日新增交易人数"
}/>

<#--指标数据格式化 1：整数 2：两位小数，3两位小数加百分号 -->
<#assign opennorms_num_format = {
					"drkh":1,
					"drscbk":1,
					"drscyk":1,
					"drscjq":1,
					"drkhdrbk":1,
					"drkhdryk":1,
					"drkhdrjq":1,
					"drkhdrjyrs":1,
					"drxzjyrs":1,
					"drxzjyje":2,
					"drkhdrjyje":2,
					"drxdrs":1,
					"drxdje":2,
					"drqrjycjrs":1,
					"drqrjycjje":2,
					"drxdbs":1,
					"rjxdje":2,
					"drqrjycjbs":1,
					"rjcjje":2,
					"drkhbkl":3,
					"drkhykl":3,
					"drkhjql":3,
					"drkhjyl":3,
					"drzfrs":1,
					"drzfbs":1,
					"drzfje":2,
					"rjzfje":2
} />

<#assign normsum_format = {
					"zkh":1,
					"sczbk":1,
					"sczyk":1,
					"sczjq":1,
					"drkhdrzbk":1,
					"drkhdrzyk":1,
					"drkhdrzjq":1,
					"xzjyzrs":1,
					"xzjyzje":2,
					"drkhdrjyzbs":1,
					"drkhdrjyzje":2,
					"xdzbs":1,
					"xdzje":2,
					"qrjycjzbs":2,
					"qrjycjzje":2,
					"drkhdrjyzrs":1,
					"xdzrs":1,
					"qrjycjzrs":1,
					"rjxdzje":2,
					"rjcjzje":2,
					"drkhzbkl":2,
					"drkhzykl":2,
					"drkhzjql":2,
					"drkhzjyl":2,
					"xdzzhl":2,
					"cjzzhl":2,
					"zzfrs":1,
					"zzfbs":1,
					"zzfje":2,
					"rjzzfje":2
}>


<#assign fundtype = {
					"0":"股票型",
					"1":"混合型",
					"2":"债券型",
					"3":"货币型",
					"4":"QDII",
					"6":"结构型",
					"7":"公募专户",
					"a":"储蓄罐"
}>

<#assign normsum = {
					"drkh":"zkh",
					"drscbk":"sczbk",
					"drscyk":"sczyk",
					"drscjq":"sczjq",
					"drkhdrbk":"drkhdrzbk",
					"drkhdryk":"drkhdrzyk",
					"drkhdrjq":"drkhdrzjq",
					"drxzjyrs":"xzjyzrs",
					"drxzjyje":"xzjyzje",
					"drkhdrjybs":"drkhdrjyzbs",
					"drkhdrjyje":"drkhdrjyzje",
					"drxdbs":"xdzbs",
					"drxdje":"xdzje",
					"drqrjycjbs":"qrjycjzbs",
					"drqrjycjje":"qrjycjzje",
					"drkhdrjyrs":"drkhdrjyzrs",
					"drxdrs":"xdzrs",
					"drqrjycjrs":"qrjycjzrs",
					"rjxdje":"rjxdzje",
					"rjcjje":"rjcjzje",
					"drkhbkl":"drkhzbkl",
					"drkhykl":"drkhzykl",
					"drkhjql":"drkhzjql",
					"drkhjyl":"drkhzjyl",
					"xdzhl":"xdzzhl",
					"cjzhl":"cjzzhl",
					"drzfrs":"zzfrs",
					"drzfbs":"zzfbs",
					"drzfje":"zzfje",
					"rjzfje":"rjzzfje"
}>