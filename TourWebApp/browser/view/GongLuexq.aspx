<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GongLuexq.aspx.cs" Inherits="TourWebApp.browser.view.GongLuexq" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    l<link href="../static/css/discuss/GongLuexq.css" rel="stylesheet" type="text/css" />
        <link href="../static/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../static/css/index/customize.css" rel="stylesheet" />
    <link href="../static/css/toursel/toursel.css" rel="stylesheet" />
     <link href="../static/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../static/js/jquery-latest.js"></script>
    <script src="../static/js/pc.js"></script>
    <script src="/demos/googlegg.js"></script>
    <script type="text/javascript" src="browser/static/js/pc.js"></script>

    <title></title>
</head>
<body>
    
    <nav class="navbar navbar-default navbar-fixed-top" style="margin-bottom: 10px;">
        <div class="container-fluid" style="background-color: rgba(34, 139, 34,0.5);">
            <div class="col-md-1"><a class="navbar-brand" href="#" style="color: #fff;">Brand</a></div>
            <div class="navbar-header col-md-8">
                <form class="navbar-form navbar-left" role="search" runat="server">
                    <div class="form-group">
                        <input id="SearchBox" class="form-control" style="width: 600px;" />
                    </div>
                    <button id="SearchBtn" type="button" class="btn btn-success"><span class="glyphicon glyphicon-search"></span></button>
                </form>
            </div>
            <ul class="nav navbar-nav navbar-right col-md-2 col-md-offset-1" style="display: none">
                <li><a href="#" style="color: #fff;">登录</a></li>
                <li><a href="#" style="color: #fff;">注册</a></li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <div class="menu">
            <h3><i class="q-menu-img positionIicon"></i>云南</h3>
            <ul class="ulmenu1">
                <li><a href="#tab1">大理之行</a></li>
                <li><a href="#">艳遇丽江</a></li>
                <li><a href="#">香格里拉</a></li>

            </ul>

            <h3><i class="q-menu-doit positionIicon"></i>广西</h3>
            <ul class="ulmenu2">
                <li><a href="#">猫儿山</a></li>
                <li><a href="#">阳朔之行</a></li>
                <li><a href="#">“甲天下”桂林</a></li>
                <li><a href="#">北海之旅</a></li>

            </ul>

            <h3><i class="q-menu-three positionIicon"></i>西藏</h3>
            <ul class="ulmenu3">
                <li><a href="#tab1">玛旁雍错</a></li>
                <li><a href="#">“日光城”拉萨</a></li>
                <li><a href="#">珠穆朗玛峰</a></li>

            </ul>

            <h3><i class="q-menu-three positionIicon"></i>国外游</h3>
            <ul class="ulmenu3">
                <li><a href="#tab1">英国伦敦</a></li>
                <li><a href="#">法国巴黎</a></li>
                <li><a href="#">美国洛杉矶</a></li>

            </ul>
        </div>

        <div class="content">
            <div class="get-menu">
                <a href="#">旅游攻略</a>
                <span>></span>
                <a class="A1" href="#">常见问题</a>
            </div>

            <div class="menu1 menu_tab">
                <div id="tab1" class="tab active">
                    <p class="tt">大理游玩攻略</p>
                    <p>云南，一个适合带上相机去慢游，在胶片时光里感受旅行意义的治愈地方，有古城、高山、湖泊、湿地，
                        更有纳西烤肉、过桥米线、蒸汽石锅鱼、白族酸辣鱼等数不清的特色美食，还可以感受纳西族、摩梭族、
                        白族、傣族这些不同民族的文化习俗。</p>
                    <img src="../static/img/personal_bg.jpg" />
                    <h4>推荐游玩路线：</h4>
                    <p class="dd">第一天：大理—蝴蝶泉公园—洱海—洱海大游船—南诏风情岛(特色四星酒店）</p>
                    <p class="dd">第二天：崇圣寺三塔—大理古城—洋人街—丽江</p>
                    <p>第一天的行程:蝴蝶泉公园—洱海大游船—南诏风情岛。蝴蝶泉公园，“白族的恋爱圣地”，在洱海乘坐豪华大游船观苍山洱海风光，
                        登南诏风情岛，游览岛上风光。返程结束行程。如果大家自己玩想坐船的话，建议提前关注游船信息，提前预订，
                        防止去到后人多难排队又没有票的尴尬</p>
                    <p>第二天的行程：崇圣寺三塔—大理古城—洋人街—丽江.大理古城在唐、宋500多年间是云南的政治、经济、文化中心。
                        古城内文物古迹众多，建于南诏丰佑年间（公元824～859年）的崇圣寺三塔就是其中著名的景点，很多人对大理的
                        印象或是从《天龙八部》开始，到了这里之后被她的美所折服。古城是不需要门票的</p>
                    <img src="../static/img/main_bg6.jpg" />
                    <h4>各路美食汇聚，行动食动</h4>
                    <p> 当然到云南除了欣赏山水美景外，各种云南特色美食也是不能错过的。汽锅鸡是云南的名菜之一，早在2000多年前就在滇南民间流传
                        。汽锅鸡的做法是将鸡肉洗净后再砍成小块，和姜、盐、葱、草果一道放入汽锅内盖好，汽锅置于一放满水的汤锅之上，用纱布将
                        隙缝堵上，以免漏汽，再放到火上煮。汤锅的水开后，蒸汽就通过汽锅中间的汽嘴将鸡逐渐蒸熟（一般需3 ～4小时）。
                        由于汤汁是蒸汽凝成，鸡肉的鲜味在蒸的过程中丧失较少，所以基本上保持了鸡肉的原汁原味。当然，
                        云南地道美味小吃过桥米线，大救驾、野生菌锅都是不可多得的美味，不过有些野生菌会有毒素，需煮透才能除掉它的毒性，
                        美食虽好，切不可心急。</p>

                    

                </div>
                <div id="tab2" class="tab">
                    <p class="tt">4.快乐加账号余额与银行账号余额不一致？</p>
                    <p>This is Answer！4.快乐加账号余额与银行账号余额不一致？4.快乐加账号余额与银行账号余额不一致？4.快乐加账号余额与银行账号余额不一致？</p>

                    <p class="tt">5.手工凭证的银行收付转能为什么不能反应到仪表盘？</p>
                    <p>This is Answer！5.手工凭证的银行收付转能为什么不能反应到仪表盘？5.手工凭证的银行收付转能为什么不能反应到仪表盘？5.手工凭证的银行收付转能为什么不能反应到仪表盘？5.手工凭证的银行收付转能为什么不能反应到仪表盘？</p>
                </div>

                <div id="tab3" class="tab">
                    <p class="tt">6.新增银行账号处”是否现金账户”什么意思？</p>
                    <p>This is Answer！6.新增银行账号处”是否现金账户”什么意思？6.新增银行账号处”是否现金账户”什么意思？</p>

                    <p class="tt">7.事务处理处生成的凭证属于哪个会计期间的？？</p>
                    <p>This is Answer！7.事务处理处生成的凭证属于哪个会计期间的？？7.事务处理处生成的凭证属于哪个会计期间的？？7.事务处理处生成的凭证属于哪个会计期间的？？7.事务处理处生成的凭证属于哪个会计期间的？？7.事务处理处生成的凭证属于哪个会计期间的？？</p>

                    <p class="tt">8.凭单与费用报销单有什么区别？</p>
                    <p>This is Answer！8.凭单与费用报销单有什么区别？8.凭单与费用报销单有什么区别？8.凭单与费用报销单有什么区别？8.凭单与费用报销单有什么区别？</p>

                    <p class="tt">9.财务复核的时候若发现上交的发票与报销不符，在系统该怎么操作？</p>
                    <p>This is Answer！9.财务复核的时候若发现上交的发票与报销不符，在系统该怎么操作？9.财务复核的时候若发现上交的发票与报销不符，在系统该怎么操作？9.财务复核的时候若发现上交的发票与报销不符，在系统该怎么操作？</p>

                    <p class="tt">10.费用报销个步骤中，哪个步骤会自动生成会计凭证？</p>
                    <p>This is Answer！10.费用报销个步骤中，哪个步骤会自动生成会计凭证？10.费用报销个步骤中，哪个步骤会自动生成会计凭证？10.费用报销个步骤中，哪个步骤会自动生成会计凭证？</p>

                    <p class="tt">11.已提交的报销单如发现填写错误能撤回吗？</p>
                    <p>This is Answer！11.已提交的报销单如发现填写错误能撤回吗？11.已提交的报销单如发现填写错误能撤回吗？11.已提交的报销单如发现填写错误能撤回吗？11.已提交的报销单如发现填写错误能撤回吗？</p>

                    <p class="tt">12.工资处理处社保公积金都能自动计算的吗？</p>
                    <p>This is Answer！12.工资处理处社保公积金都能自动计算的吗？</p>
                </div>

                <div id="tab4" class="tab">
                    <p class="tt">13.为什么关账后损益类科目还有余额？</p>
                    <p>This is Answer！</p>

                    <p class="tt">14.月末关账后发现凭证录入有误还能再修改吗？</p>
                    <p>月末关账后发现凭证录入有误还能再修改吗？月末关账后发现凭证录入有误还能再修改吗？月末关账后发现凭证录入有误还能再修改吗？</p>

                    <p class="tt">15.年结凭证需要自己手动录入吗</p>
                    <p>年结凭证需要自己手动录入吗年结凭证需要自己手动录入吗年结凭证需要自己手动录入吗年结凭证需要自己手动录入吗</p>

                    <p class="tt">16.系统能自动生成哪些凭证，哪些凭证需要手工录入？</p>
                    <p>系统能自动生成哪些凭证，哪些凭证需要手工录入？16、系统能自动生成哪些凭证，哪些凭证需要手工录入？？</p>

                    <p class="tt">17.在其他财务软件做的凭证能导入系统吗？</p>
                    <p>在其他财务软件做的凭证能导入系统吗？在其他财务软件做的凭证能导入系统吗？在其他财务软件做的凭证能导入系统吗？在其他财务软件做的凭证能导入系统吗？</p>

                    <p class="tt">18.为什么有些凭证不能删除？</p>
                    <p>为什么有些凭证不能删除？为什么有些凭证不能删除？</p>

                    <p class="tt">19.业务驱动收到或者开具的发票能删除吗？</p>
                    <p>业务驱动收到或者开具的发票能删除吗？19.业务驱动收到或者开具的发票能删除吗？19.业务驱动收到或者开具的发票能删除吗？</p>

                    <p class="tt">20.税收测算表的增值税及营业税以什么为根据来计算的？</p>
                    <p>税收测算表的增值税及营业税以什么为根据来计算的？税收测算表的增值税及营业税以什么为根据来计算的？税收测算表的增值税及营业税以什么为根据来计算的？</p>

                    <p class="tt">21.税收管理报表计提生成凭证后若发现计提错误还能修改吗？</p>
                    <p>税收管理报表计提生成凭证后若发现计提错误还能修改吗？21、税收管理报表计提生成凭证后若发现计提错误还能修改吗？21、税收管理报表计提生成凭证后若发现计提错误还能修改吗？</p>

                </div>

                <div id="tab5" class="tab">
                    <p class="tt">22.账龄表初始化是什么意思？</p>
                    <p>This is Answer！</p>

                    <p class="tt">23.在哪里可以查看明细帐？</p>
                    <p>在哪里可以查看明细帐？在哪里可以查看明细帐？在哪里可以查看明细帐？在哪里可以查看明细帐？</p>

                    <p class="tt">24.每生成一张凭证之后为什么三大报表及科目余额表都会改变？</p>
                    <p>每生成一张凭证之后为什么三大报表及科目余额表都会改变？每生成一张凭证之后为什么三大报表及科目余额表都会改变？每生成一张凭证之后为什么三大报表及科目余额表都会改变？每生成一张凭证之后为什么三大报表及科目余额表都会改变？</p>

                    <p class="tt">25.如何查看关账月份前的报表？</p>
                    <p>如何查看关账月份前的报表？如何查看关账月份前的报表？如何查看关账月份前的报表？</p>

                </div>


                <div id="tab6" class="tab">
                    <p class="tt">26.如何录入科目期初余额？</p>
                    <p>This is Answer！</p>

                    <p class="tt">27.初始化的时候期初余额录入错误怎么修改?</p>
                    <p>初始化的时候期初余额录入错误怎么修改?</p>

                    <p class="tt">28.初始化的时候科目余额为什么录入不进去？</p>
                    <p>初始化的时候科目余额为什么录入不进去？28、初始化的时候科目余额为什么录入不进去？28、初始化的时候科目余额为什么录入不进去？</p>

                    <p class="tt">29.科目匹配是什么意思？</p>
                    <p>科目匹配是什么意思？科目匹配是什么意思？科目匹配是什么意思？</p>

                    <p class="tt">30.为什么有些科目删除不了？</p>
                    <p>This is Answer！</p>

                    <p class="tt">31.如何增加一级科目？会计科目到几级？</p>
                    <p>如何增加一级科目？会计科目到几级？如何增加一级科目？会计科目到几级？如何增加一级科目？会计科目到几级？如何增加一级科目？会计科目到几级？</p>

                    <p class="tt">32.如何增加、修改、删除科目？</p>
                    <p>如何增加、修改、删除科目？如何增加、修改、删除科目？如何增加、修改、删除科目？如何增加、修改、删除科目？如何增加、修改、删除科目？如何增加、修改、删除科目？</p>

                    <p class="tt">33. 科目是按照哪个企业会计准则来的？</p>
                    <p>科目是按照哪个企业会计准则来的？科目是按照哪个企业会计准则来的？科目是按照哪个企业会计准则来的？科目是按照哪个企业会计准则来的？</p>

                    <p class="tt">34.是否支持辅助核算？如何核算每个客户或者供应商的往来款项？</p>
                    <p>This is Answer！</p>

                    <p class="tt">35.若员工离职了，如何把该员工从系统中删除？</p>
                    <p>若员工离职了，如何把该员工从系统中删除若员工离职了，如何把该员工从系统中删除若员工离职了，如何把该员工从系统中删除？</p>

                    <p class="tt">36.如何修改报销审批人？</p>
                    <p>如何修改报销审批人？36、如何修改报销审批人？36、如何修改报销审批人？</p>

                    <p class="tt">37.员工个人信息如何修改？</p>
                    <p>员工个人信息如何修改员工个人信息如何修改员工个人信息如何修改员工个人信息如何修改</p>
                </div>

            </div>

            <div class="menu2 menu_tab">
                <div id="tab-1" class="tab">
                    <p class="tt">1. Question</p>
                    <p>This is Answer！</p>

                    <p class="tt">2. Question</p>
                    <p>This is Answer！</p>

                    <p class="tt">3. Question</p>
                    <p>This is Answer！</p>
                    <p>This is Answer！</p>
                </div>

                <div id="ta-2" class="tab">
                    <p class="tt">3. Question</p>
                    <p>This is Answer！</p>
                    <p>This is Answer！</p>
                </div>

                <div id="tab-3" class="tab">
                    <p class="tt">3.Question</p>
                    <p>This is Answer！</p>
                    <p>This is Answer！</p>
                </div>

                <div id="tab-4" class="tab">
                    <p class="tt">2.Question</p>
                    <p>This is Answer！</p>
                    <p>This is Answer！</p>
                </div>

                <div id="tab-5" class="tab">table5</div>
                <div id="tab-6" class="tab">table6</div>
                <div id="tab-7" class="tab">table7</div>
                <div id="tab-8" class="tab">table8</div>
                <div id="tab-9" class="tab">table9</div>
                <div id="tab-10" class="tab">table10</div>
                <div id="tab-11" class="tab">table11</div>
                <div id="tab-12" class="tab">table12</div>
            </div>

            <div class="menu3 menu_tab">
                <div id="tab-3-1" class="tab">
                    <p class="tt">1. 。。。如何收费？222</p>
                    <p>。。。的个人版用户，100套账免费记，只需注册即可直接使用。。。。的代账公司版，多人操作且有服务运营管理系统，总账套数300套收费980元/年，总账套数1000套收费1980元/年。</p>

                    <p class="tt">2. 。。。安全吗？</p>
                    <p>在安全保障方面，我们参照并实施了多项国际及国家在信息安全领域的标准，成立了公司级安全小组，制定了详细的规章制度与考核标准，由安全监理负责监察规章制度的执行，确保客户数据的收集、储存及使用均遵守内部监控以及适用的法律及法规规定；用户数据安全方面我们采用安全性最好的独立部署模式，对每一家企业分配私有的专用服务器资源独立使用，数据单独存放，核心数据每天进行本地，本地异机与异地异机三重备份机制，解决因为极端事件给数据带来的安全隐患；在数据传输安全方面，所有用户关键及核心数据，我们全部使用SSL加密转输，杜绝了用户数据在传输过程中可能出现的窃听、篡改、伪造等行为。</p>


                    <p class="tt">3. 有。。。的流程操作视频吗？</p>
                    <p>。。。操作视频：http://kuaiji.youku.com/hall/?ykvid=XODYwMTkwOTQw</p>
                    <p>帮助文档：http://www.uu.com.cn/help/index.html</p>

                    <p class="tt">1. 。。。如何收费？</p>
                    <p>。。。的数据是云端多重备份存储，是自动保存的。</p>
                    <p>使用者年底也可以把总账、明细账下载到本地归档，操作步骤：点击“账簿管理”，选择某一公司账套，点击“账簿归档”，即能将所选年度的总账、明细账、数量金额明细账下载到本地用于归档。</p>

                    <p class="tt">1. 。。。如何收费？</p>
                    <p>。。。的个人版用户，100套账免费记，只需注册即可直接使用。。。。的代账公司版，多人操作且有服务运营管理系统，总账套数300套收费980元/年，总账套数1000套收费1980元/年。</p>

                    <p class="tt">1. 。。。如何收费？</p>
                    <p>。。。的个人版用户，100套账免费记，只需注册即可直接使用。。。。的代账公司版，多人操作且有服务运营管理系统，总账套数300套收费980元/年，总账套数1000套收费1980元/年。</p>

                    <p class="tt">1. 。。。如何收费？</p>
                    <p>。。。</p>

                    <p class="tt">1. 。。。如何收费？</p>
                    <p>。。。</p>
                </div>
                <div id="tab-3-2" class="tab">table2</div>
                <div id="tab-3-3" class="tab">table3</div>
                <div id="tab-3-4" class="tab">
                    <p class="tt">1. 。。。</p>
                    <p>。。。的个人版用户，100套账免费记，只需注册即可直接使用。。。。的代账公司版，多人操作且有服务运营管理系统，总账套数300套收费980元/年，总账套数1000套收费1980元/年。</p>

                    <p class="tt">2. 。。。安全吗？</p>
                    <p>在安全保障方面，我们参照并实施了多项国际及国家在信息安全领域的标准，成立了公司级安全小组，制定了详细的规章制度与考核标准，由安全监理负责监察规章制度的执行，确保客户数据的收集、储存及使用均遵守内部监控以及适用的法律及法规规定；用户数据安全方面我们采用安全性最好的独立部署模式，对每一家企业分配私有的专用服务器资源独立使用，数据单独存放，核心数据每天进行本地，本地异机与异地异机三重备份机制，解决因为极端事件给数据带来的安全隐患；在数据传输安全方面，所有用户关键及核心数据，我们全部使用SSL加密转输，杜绝了用户数据在传输过程中可能出现的窃听、篡改、伪造等行为。</p>
                </div>
                <div id="tab-3-5" class="tab">table5</div>
                <div id="tab-3-6" class="tab">table6</div>
                <div id="tab-3-7" class="tab">table7</div>
                <div id="tab-3-8" class="tab">table8</div>
                <div id="tab-3-9" class="tab">table9</div>
                <div id="tab-3-10" class="tab">table10</div>
                <div id="tab-3-11" class="tab">table11</div>
                <div id="tab-3-12" class="tab">table12</div>
            </div>
        </div>
    </div>

</body>
</html>
