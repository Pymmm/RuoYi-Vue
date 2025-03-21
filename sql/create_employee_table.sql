-- ----------------------------
-- 3、员工表
-- ----------------------------
DROP TABLE IF EXISTS mdm_employee;

CREATE TABLE mdm_employee
(
    id            BIGINT AUTO_INCREMENT PRIMARY KEY COMMENT '员工ID',
    employee_code VARCHAR(9) UNIQUE NOT NULL COMMENT '员工编码',
    employee_name VARCHAR(100)      NOT NULL COMMENT '员工姓名',
    create_by     VARCHAR(64)  DEFAULT 'admin' COMMENT '创建者',
    create_time   DATETIME     DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_by     VARCHAR(64)  DEFAULT NULL COMMENT '更新者',
    update_time   DATETIME     DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    remark        VARCHAR(500) DEFAULT NULL COMMENT '备注'
) COMMENT ='员工表';

-- ----------------------------
-- 员工表初始化数据
-- ----------------------------
INSERT INTO mdm_employee (employee_code, employee_name)
VALUES     ('800100001', '卫国'),
           ('800100002', '王卫冲'),
           ('800100003', '杨翔瑞'),
           ('800100004', '刘文毅'),
           ('800100005', '王雪飞'),
           ('800100006', '安程程'),
           ('800100007', '陈汉玲'),
           ('800100008', '屈赫'),
           ('800100009', '刘涛萍'),
           ('800100010', '麦美芬'),
           ('800100011', '麦锦莹'),
           ('800100012', '廖慕龙'),
           ('800100013', '张炜'),
           ('800100014', '梁炜君'),
           ('800100015', '田霞'),
           ('800100016', '马宪振'),
           ('800100017', '聂光宏'),
           ('800100018', '丁红连'),
           ('800100019', '赖晓军'),
           ('800100020', '冯浩然'),
           ('800100021', '何然然'),
           ('800100022', '陶惠琳'),
           ('800100023', '覃秋连'),
           ('800100024', '房丹丹'),
           ('800100025', '黄日华'),
           ('800100026', '麦文声'),
           ('800100027', '林炳坚'),
           ('800100028', '梁建举'),
           ('800100029', '王博'),
           ('800100030', '唐彬'),
           ('800100031', '梁志均'),
           ('800100032', '梁杏贞'),
           ('800100033', '史雪艳'),
           ('800100034', '张志浩'),
           ('800100035', '卫广雄'),
           ('800100036', '王卫防'),
           ('800100037', '欧静韵'),

           ('800200001', '陈艳艳'),
           ('800200002', '梁楚翘'),
           ('800200003', '殷向辉'),
           ('800200004', '梁钜铭'),
           ('800200005', '莫婷枝'),
           ('800200006', '李文智'),
           ('800200007', '何肖珍'),
           ('800200008', '李韵妮'),
           ('800200009', '何世宝'),
           ('800200010', '余敏'),
           ('800200011', '张颖瑜'),
           ('800200012', '彭晓清'),
           ('800200013', '谢陈梅'),
           ('800200014', '吴锡坤'),
           ('800200015', '陈沛轩'),
           ('800200016', '赵俊'),
           ('800200017', '冯佩映'),
           ('800200018', '陈胜江'),
           ('800200019', '覃祖全'),
           ('800200020', '钟永超'),
           ('800200021', '何健文'),
           ('800200022', '郭荣耀'),
           ('800200023', '钟健志'),
           ('800200024', '黄民祥'),
           ('800200025', '黎杏冰'),
           ('800200026', '邓细荣'),
           ('800200027', '梁家辉'),
           ('800200028', '林富'),
           ('800200029', '梁永腾'),
           ('800200030', '钟尧'),
           ('800200031', '黄靖智'),
           ('800200032', '李嘉明'),
           ('800200033', '甘换峰'),
           ('800200034', '王向阳'),
           ('800200035', '李海峰'),
           ('800200036', '陈锦妍'),

           ('800300001', '彭仕春'),
           ('800300002', '张玉莲'),
           ('800300003', '欧阳效芹'),
           ('800300004', '杨海军'),
           ('800300005', '潘家康'),
           ('800300006', '隆秀勤'),
           ('800300007', '阳彝培'),
           ('800300008', '赵娜'),
           ('800300009', '杨荣晟'),
           ('800300010', '胡文涛'),
           ('800300011', '关高振'),

           ('800400001', '梁培勇'),
           ('800400002', '肖乐'),
           ('800400003', '黎小军'),

           ('800500001', '张福斌'),
           ('800500002', '顾冲'),

           ('800600001', '胡磊'),
           ('800600002', '王士柱'),

           ('800700001', '张琦'),
           ('800700002', '高明远'),
           ('800700003', '朱虹'),
           ('800700004', '姜爽伟'),
           ('800700005', '杨文强'),
           ('800700006', '王代宗'),
           ('800700007', '浦一鸣'),

           ('800800001', '侯鹏飞'),
           ('800800002', '常晓东'),
           ('800800003', '张梦柯'),
           ('800800004', '石昌恒'),
           ('800800005', '王万强'),
           ('800800006', '胡祖祥'),
           ('800800007', '陈岩'),
           ('800800008', '王亚运'),
           ('800800009', '江春媛'),
           ('800800010', '熊浩'),
           ('800800011', '刘平平'),
           ('800800012', '施玲玲'),
           ('800800013', '黎俊'),
           ('800800014', '陶霞'),
           ('800800015', '邓立宏'),
           ('800800016', '袁志康'),
           ('800800017', '卞莉华'),
           ('800800018', '徐临娟'),
           ('800800019', '唐雪利'),
           ('800800020', '金敏'),
           ('800800021', '陈颖异'),
           ('800800022', '宗琦'),
           ('800800023', '黄苗苗'),
           ('800800024', '谢红群'),
           ('800800025', '付雅俐'),
           ('800800026', '朱婷婷'),
           ('800800027', '吴雪漫'),
           ('800800028', '许东'),
           ('800800029', '刁文'),
           ('800800030', '邱长军'),
           ('800800031', '张瑞'),
           ('800800032', '刘伟'),
           ('800800033', '吴晶伟'),
           ('800800034', '周立斌'),
           ('800800035', '柳佳威'),
           ('800800036', '范毛路'),
           ('800800037', '吴虹'),
           ('800800038', '镐忠德'),
           ('800800039', '姚英旺'),
           ('800800040', '江代权'),
           ('800800041', '廖远红'),
           ('800800042', '曹宏胜'),
           ('800800043', '张永喜'),
           ('800800044', '潘憬'),
           ('800800045', '许征兵'),
           ('800800046', '查祥'),
           ('800800047', '朱云飞'),
           ('800800048', '夏然'),
           ('800800049', '李强'),
           ('800800050', '贺应生'),
           ('800800051', '毛伟江'),
           ('800800052', '鄢大春'),
           ('800800053', '向志均'),
           ('800800054', '胡娟'),
           ('800800055', '李齐龙'),
           ('800800056', '何海'),
           ('800800057', '张帝勋'),
           ('800800058', '孙宇蛟'),
           ('800800059', '向建'),
           ('800800060', '张家龙'),
           ('800800061', '戴卫民'),
           ('800800062', '朱承刚'),
           ('800800063', '吴鹏飞'),
           ('800800064', '朱德林'),
           ('800800065', '罗道政'),
           ('800800066', '陈兴明'),
           ('800800067', '鲁斌斌'),
           ('800800068', '孔松'),
           ('800800069', '任泽江'),
           ('800800070', '鲁守伟'),
           ('800800071', '蔡昌友'),
           ('800800072', '于先有'),
           ('800800073', '周广锋'),
           ('800800074', '彭朝付'),
           ('800800075', '王开云'),
           ('800800076', '鄢大强'),
           ('800800077', '高飞宜'),
           ('800800078', '鄢阳帆'),
           ('800800079', '水新兵'),
           ('800800080', '方克兵'),
           ('800800081', '卜志阳'),
           ('800800082', '吾麦尔江·阿力木'),
           ('800800083', '阿卜杜热扎克·艾力'),
           ('800800084', '徐金纬'),
           ('800800085', '朱登银'),
           ('800800086', '向飞'),
           ('800800087', '许云伍'),
           ('800800088', '张世平'),
           ('800800089', '强光国'),
           ('800800090', '雷帅'),
           ('800800091', '尤先林'),
           ('800800092', '马红伟'),
           ('800800093', '焦相国'),
           ('800800094', '崔庆锡'),
           ('800800095', '高同喜'),
           ('800800096', '张元军'),
           ('800800097', '黄国刚'),
           ('800800098', '王世兵'),
           ('800800099', '刘秦辉'),
           ('800800100', '孔敏'),
           ('800800101', '许云浩'),
           ('800800102', '陈加安'),
           ('800800103', '华勇'),
           ('800800104', '鲁金元'),
           ('800800105', '陈宝忠'),
           ('800800106', '祝春喜'),
           ('800800107', '刘焱'),
           ('800800108', '艾则麦提·麦麦提'),
           ('800800109', '张军'),
           ('800800110', '雷康'),
           ('800800111', '王昆'),
           ('800800112', '雷军'),
           ('800800113', '葛道文'),
           ('800800114', '夏长鹏'),
           ('800800115', '李启辉'),
           ('800800116', '伊斯拉木·艾尔肯'),
           ('800800117', '郭凡江'),
           ('800800118', '孙智杰'),
           ('800800119', '钟开创'),
           ('800800120', '刘代宇'),
           ('800800121', '伍生根'),
           ('800800122', '田树华'),
           ('800800123', '周自珍'),
           ('800800124', '张双叶'),
           ('800800125', '俞能枝'),
           ('800800126', '鄢会兰'),
           ('800800127', '谢续惠'),
           ('800800128', '张姗'),
           ('800800129', '夏冬敏'),
           ('800800130', '张政'),
           ('800800131', '周寿礼'),
           ('800800132', '崔庆松'),
           ('800800133', '崔祠海'),
           ('800800134', '张立鹏'),
           ('800800135', '后世富'),
           ('800800136', '魏家骏'),
           ('800800137', '鲁勇'),
           ('800800138', '夏红建'),
           ('800800139', '骆礼伦'),
           ('800800140', '郭志祥'),
           ('800800141', '王会筛'),
           ('800800142', '查日华'),
           ('800800143', '丁圣杰'),
           ('800800144', '柳志文'),
           ('800800145', '秦江阳'),
           ('800800146', '尹晨'),
           ('800800147', '卢坤丽'),
           ('800800148', '曹东升'),
           ('800800149', '唐晶晶'),
           ('800800150', '杨红'),
           ('800800151', '潘龙'),
           ('800800152', '孙霞'),
           ('800800153', '汪嘉东'),
           ('800800154', '刘家敏'),
           ('800800155', '马宁'),
           ('800800156', '钟红彬'),
           ('800800157', '张小峰'),

           ('800900001', '伍生根'),
           ('800900002', '田树华'),
           ('800900003', '周自珍'),
           ('800900004', '张双叶'),
           ('800900005', '俞能枝'),
           ('800900006', '鄢会兰'),
           ('800900007', '谢续惠'),

           ('801000001', '孔岩'),
           ('801000002', '王强'),
           ('801000003', '谈臻'),
           ('801000004', '孙英杰'),
           ('801000005', '杨雄'),

           ('801100001', '崔庆松'),
           ('801100002', '崔祠海'),
           ('801100003', '张立鹏'),
           ('801100004', '后世富'),
           ('801100005', '魏家骏'),
           ('801100006', '鲁勇'),
           ('801100007', '夏红建'),
           ('801100008', '骆礼伦'),
           ('801100009', '郭志祥'),
           ('801100010', '王会筛'),
           ('801100011', '查日华'),
           ('801100012', '丁圣杰'),
           ('801100013', '柳志文'),
           ('801100014', '秦江阳'),
           ('801100015', '尹晨'),
           ('801100016', '卢坤丽'),
           ('801100017', '曹东升'),
           ('801100018', '唐晶晶'),
           ('801100019', '杨红'),
           ('801100020', '潘龙'),
           ('801100021', '孙霞'),
           ('801100022', '汪嘉东'),
           ('801100023', '刘家敏'),
           ('801100024', '马宁'),
           ('801100025', '钟红彬'),
           ('801100026', '张小峰'),
           ('801100027', '唐伟清'),
           ('801100028', '秦云山'),
           ('801100029', '钟淑敏'),
           ('801100030', '钟楚云'),
           ('801100031', '吴瑞煊'),
           ('801100032', '吴瑞平'),
           ('801100033', '冯嘉贤'),
           ('801100034', '王惟权'),
           ('801100035', '亓文岗'),
           ('801100036', '李国河'),
           ('801100037', '梁国柱'),
           ('801100038', '肖秋兰'),
           ('801100039', '张明明'),
           ('801100040', '杨家盛'),
           ('801100041', '黄木强'),
           ('801100042', '陈永治'),
           ('801100043', '梁燕杭'),
           ('801100044', '叶启贵'),
           ('801100045', '王龙'),
           ('801100046', '张华明'),
           ('801100047', '肖公明'),
           ('801100048', '白祝成'),
           ('801100049', '黄兴林'),
           ('801100050', '周来刚'),
           ('801100051', '宋新国'),
           ('801100052', '欧继养'),
           ('801100053', '周敏华'),
           ('801100054', '梁笑萍'),
           ('801100055', '刘国法'),
           ('801100056', '陈顺铭'),
           ('801100057', '叶胜蓝'),
           ('801100058', '覃嘉俊'),
           ('801100059', '曾思敏'),
           ('801100060', '李甲军'),
           ('801100061', '谭令'),
           ('801100062', '林海潮'),
           ('801100063', '覃元春'),
           ('801100064', '赖日汉'),
           ('801100065', '王怀国'),
           ('801100066', '高奇'),
           ('801100067', '陈宇'),
           ('801100068', '孔德炜'),
           ('801100069', '邹远驰'),
           ('801100070', '曾汉荣'),
           ('801100071', '汪成'),
           ('801100072', '蒋宁华'),
           ('801100073', '黄勇锋'),
           ('801100074', '唐德'),
           ('801100075', '黄伟生'),
           ('801100076', '陈新春'),
           ('801100077', '黄胜军'),
           ('801100078', '李进国'),
           ('801100079', '胡长平'),
           ('801100080', '张健铭'),
           ('801100081', '张国盛'),
           ('801100082', '周华兵'),
           ('801100083', '欧永康'),
           ('801100084', '柒品乾'),
           ('801100085', '肖志如'),
           ('801100086', '王家泰'),
           ('801100087', '黎昌明'),
           ('801100088', '毛海容'),
           ('801100089', '王添娣'),
           ('801100090', '冯树焯'),
           ('801100091', '植培根'),
           ('801100092', '陆禹有'),
           ('801100093', '黄桂杨'),
           ('801100094', '霍锐添'),
           ('801100095', '陈胜祥'),
           ('801100096', '刘海林'),
           ('801100097', '梁庆杰'),
           ('801100098', '谢必芳'),
           ('801100099', '刘志存'),
           ('801100100', '莫法森'),
           ('801100101', '古朋'),
           ('801100102', '曾广法'),
           ('801100103', '张旭球'),
           ('801100104', '玉英杰'),
           ('801100105', '孙立建'),
           ('801100106', '相江华'),
           ('801100107', '李建修'),
           ('801100108', '何利荣'),
           ('801100109', '陈鹏'),
           ('801100110', '赵守仁'),
           ('801100111', '唐宗伟'),
           ('801100112', '梁金源'),
           ('801100113', '朱团斌'),
           ('801100114', '谢长新'),
           ('801100115', '袁景裕'),
           ('801100116', '孟庆鲍'),
           ('801100117', '苏湛华'),
           ('801100118', '郭浩锦'),
           ('801100119', '成燕群'),
           ('801100120', '农干唐'),
           ('801100121', '王光荣'),
           ('801100122', '梁庆锋'),
           ('801100123', '熊联均'),
           ('801100124', '农干校'),
           ('801100125', '戴恩利'),
           ('801100126', '王洪平'),
           ('801100127', '王磊'),
           ('801100128', '杨杰'),
           ('801100129', '文兴欣'),
           ('801100130', '何宣银'),
           ('801100131', '杨琼会'),
           ('801100132', '罗阳利'),
           ('801100133', '李永江'),
           ('801100134', '杨秀政'),
           ('801100135', '詹得银'),
           ('801100136', '韦学化'),
           ('801100137', '冯胜霞'),
           ('801100138', '尤红兵'),
           ('801100139', '谢昌华'),
           ('801100140', '赖胜成'),
           ('801100141', '李宏军'),
           ('801100142', '李镜全'),
           ('801100143', '陈石长'),
           ('801100144', '李正荣'),
           ('801100145', '熊恩庆'),
           ('801100146', '文保良'),
           ('801100147', '李明臣'),
           ('801100148', '吴真勇'),
           ('801100149', '张志才'),
           ('801100150', '刘继清'),
           ('801100151', '吴锦辉'),
           ('801100152', '梁泽流'),
           ('801100153', '李斌'),
           ('801100154', '罗肖'),
           ('801100155', '向延群'),
           ('801100156', '龙正良'),
           ('801100157', '廖敏'),
           ('801100158', '张小平'),
           ('801100159', '詹启焕'),
           ('801100160', '兰绍林'),
           ('801100161', '宋志海'),
           ('801100162', '刘禄勇'),
           ('801100163', '李标'),
           ('801100164', '黎国标'),
           ('801100165', '赵忠亮'),
           ('801100166', '苏海垣'),
           ('801100167', '唐美军'),
           ('801100168', '杨伟思'),
           ('801100169', '邝俊才'),
           ('801100170', '蓝同能'),
           ('801100171', '刘当波'),
           ('801100172', '丁冬琴'),
           ('801100173', '余润'),
           ('801100174', '陈细华'),
           ('801100175', '李昌萍'),
           ('801100176', '曹倩'),
           ('801100177', '杨郁佳'),
           ('801100178', '张平'),
           ('801100179', '叶毛芽'),
           ('801100180', '严万林'),
           ('801100181', '罗天德'),
           ('801100182', '刘晓辉'),
           ('801100183', '曹俊强'),
           ('801100184', '刘述坤'),
           ('801100185', '廖云文'),
           ('801100186', '王龙光'),
           ('801100187', '邓兴华'),
           ('801100188', '苏继华'),
           ('801100189', '余海霞'),
           ('801100190', '冯新波'),
           ('801100191', '王美容'),
           ('801100192', '薛家富'),
           ('801100193', '王贵林'),
           ('801100194', '何艳'),
           ('801100195', '杨玉梅'),
           ('801100196', '谢文娟'),
           ('801100197', '赵守义'),
           ('801100198', '丁俊'),
           ('801100199', '邓兴红'),
           ('801100200', '杨念'),
           ('801100201', '彭沈'),
           ('801100202', '冯锐洪'),
           ('801100203', '卢健生'),
           ('801100204', '梁冠华'),
           ('801100205', '何浩峰'),
           ('801100206', '刘祥春'),
           ('801100207', '徐兴祥'),
           ('801100208', '牟小芬'),

           ('801200001', '何伟忠'),
           ('801200002', '伍人平'),
           ('801200003', '文求阳'),
           ('801200004', '黄园成'),

           ('801300001', '黄小引'),
           ('801300002', '王恩义'),
           ('801300003', '莫文全'),
           ('801300004', '谯胜分'),
           ('801300005', '李德杰'),
           ('801300006', '覃亚道'),
           ('801300007', '李德熙'),
           ('801300008', '王艳丽'),
           ('801300009', '李永福'),
           ('801300010', '肖双双'),
           ('801300011', '罗新富'),
           ('801300012', '谭万祥'),

           ('801400001', '曾新有'),
           ('801400002', '姜付荣'),
           ('801400003', '安浩'),
           ('801400004', '禄明义'),
           ('801400005', '吴满堂'),

           ('801500001', '郑蓝波'),

           ('801600001', '邓冬元');


