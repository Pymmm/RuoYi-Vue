-- ----------------------------
-- 3、员工表
-- ----------------------------
DROP TABLE IF EXISTS mdm_employee;

CREATE TABLE mdm_employee
(
    id            BIGINT AUTO_INCREMENT PRIMARY KEY COMMENT '员工ID',
    employee_code VARCHAR(5) UNIQUE NOT NULL COMMENT '员工编码',
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
VALUES
    ('00001', '卫国'),
    ('00002', '王卫冲'),
    ('00003', '杨翔瑞'),
    ('00004', '刘文毅'),
    ('00005', '王雪飞'),
    ('00006', '安程程'),
    ('00007', '陈汉玲'),
    ('00008', '屈赫'),
    ('00009', '刘涛萍'),
    ('00010', '麦美芬'),
    ('00011', '麦锦莹'),
    ('00012', '廖慕龙'),
    ('00013', '张炜'),
    ('00014', '梁炜君'),
    ('00015', '田霞'),
    ('00016', '马宪振'),
    ('00017', '聂光宏'),
    ('00018', '丁红连'),
    ('00019', '赖晓军'),
    ('00020', '冯浩然'),
    ('00021', '何然然'),
    ('00022', '陶惠琳'),
    ('00023', '覃秋连'),
    ('00024', '房丹丹'),
    ('00025', '黄日华'),
    ('00026', '麦文声'),
    ('00027', '林炳坚'),
    ('00028', '梁建举'),
    ('00029', '王博'),
    ('00030', '唐彬'),
    ('00031', '梁志均'),
    ('00032', '梁杏贞'),
    ('00033', '史雪艳'),
    ('00034', '张志浩'),
    ('00035', '卫广雄'),
    ('00036', '王卫防'),
    ('00037', '欧静韵'),
    ('00038', '陈艳艳'),
    ('00039', '梁楚翘'),
    ('00040', '殷向辉'),
    ('00041', '梁钜铭'),
    ('00042', '莫婷枝'),
    ('00043', '李文智'),
    ('00044', '何肖珍'),
    ('00045', '李韵妮'),
    ('00046', '何世宝'),
    ('00047', '余敏'),
    ('00048', '张颖瑜'),
    ('00049', '彭晓清'),
    ('00050', '谢陈梅'),
    ('00051', '吴锡坤'),
    ('00052', '陈沛轩'),
    ('00053', '赵俊'),
    ('00054', '冯佩映'),
    ('00055', '陈胜江'),
    ('00056', '覃祖全'),
    ('00057', '钟永超'),
    ('00058', '何健文'),
    ('00059', '郭荣耀'),
    ('00060', '钟健志'),
    ('00061', '黄民祥'),
    ('00062', '黎杏冰'),
    ('00063', '邓细荣'),
    ('00064', '梁家辉'),
    ('00065', '林富'),
    ('00066', '梁永腾'),
    ('00067', '钟尧'),
    ('00068', '黄靖智'),
    ('00069', '李嘉明'),
    ('00070', '甘换峰'),
    ('00071', '王向阳'),
    ('00072', '李海峰'),
    ('00073', '陈锦妍'),
    ('00074', '彭仕春'),
    ('00075', '张玉莲'),
    ('00076', '欧阳效芹'),
    ('00077', '杨海军'),
    ('00078', '潘家康'),
    ('00079', '隆秀勤'),
    ('00080', '阳彝培'),
    ('00081', '赵娜'),
    ('00082', '杨荣晟'),
    ('00083', '胡文涛'),
    ('00084', '关高振'),
    ('00085', '梁培勇'),
    ('00086', '肖乐'),
    ('00087', '黎小军'),
    ('00088', '张福斌'),
    ('00089', '顾冲'),
    ('00090', '胡磊'),
    ('00091', '王士柱'),
    ('00092', '张琦'),
    ('00093', '高明远'),
    ('00094', '朱虹'),
    ('00095', '姜爽伟'),
    ('00096', '杨文强'),
    ('00097', '王代宗'),
    ('00098', '浦一鸣'),
    ('00099', '侯鹏飞'),
    ('00100', '常晓东'),
    ('00101', '张梦柯'),
    ('00102', '石昌恒'),
    ('00103', '王万强'),
    ('00104', '胡祖祥'),
    ('00105', '陈岩'),
    ('00106', '王亚运'),
    ('00107', '江春媛'),
    ('00108', '熊浩'),
    ('00109', '刘平平'),
    ('00110', '施玲玲'),
    ('00111', '黎俊'),
    ('00112', '陶霞'),
    ('00113', '邓立宏'),
    ('00114', '袁志康'),
    ('00115', '卞莉华'),
    ('00116', '徐临娟'),
    ('00117', '唐雪利'),
    ('00118', '金敏'),
    ('00119', '陈颖异'),
    ('00120', '宗琦'),
    ('00121', '黄苗苗'),
    ('00122', '谢红群'),
    ('00123', '付雅俐'),
    ('00124', '朱婷婷'),
    ('00125', '吴雪漫'),
    ('00126', '许东'),
    ('00127', '刁文'),
    ('00128', '邱长军'),
    ('00129', '张瑞'),
    ('00130', '刘伟'),
    ('00131', '吴晶伟'),
    ('00132', '周立斌'),
    ('00133', '柳佳威'),
    ('00134', '范毛路'),
    ('00135', '吴虹'),
    ('00136', '镐忠德'),
    ('00137', '姚英旺'),
    ('00138', '江代权'),
    ('00139', '廖远红'),
    ('00140', '曹宏胜'),
    ('00141', '张永喜'),
    ('00142', '潘憬'),
    ('00143', '许征兵'),
    ('00144', '查祥'),
    ('00145', '朱云飞'),
    ('00146', '夏然'),
    ('00147', '李强'),
    ('00148', '贺应生'),
    ('00149', '毛伟江'),
    ('00150', '鄢大春'),
    ('00151', '向志均'),
    ('00152', '胡娟'),
    ('00153', '李齐龙'),
    ('00154', '何海'),
    ('00155', '张帝勋'),
    ('00156', '孙宇蛟'),
    ('00157', '向建'),
    ('00158', '张家龙'),
    ('00159', '戴卫民'),
    ('00160', '朱承刚'),
    ('00161', '吴鹏飞'),
    ('00162', '朱德林'),
    ('00163', '罗道政'),
    ('00164', '陈兴明'),
    ('00165', '鲁斌斌'),
    ('00166', '孔松'),
    ('00167', '任泽江'),
    ('00168', '鲁守伟'),
    ('00169', '蔡昌友'),
    ('00170', '于先有'),
    ('00171', '周广锋'),
    ('00172', '彭朝付'),
    ('00173', '王开云'),
    ('00174', '鄢大强'),
    ('00175', '高飞宜'),
    ('00176', '鄢阳帆'),
    ('00177', '水新兵'),
    ('00178', '方克兵'),
    ('00179', '卜志阳'),
    ('00180', '吾麦尔江·阿力木'),
    ('00181', '阿卜杜热扎克·艾力'),
    ('00182', '徐金纬'),
    ('00183', '朱登银'),
    ('00184', '向飞'),
    ('00185', '许云伍'),
    ('00186', '张世平'),
    ('00187', '强光国'),
    ('00188', '雷帅'),
    ('00189', '尤先林'),
    ('00190', '马红伟'),
    ('00191', '焦相国'),
    ('00192', '崔庆锡'),
    ('00193', '高同喜'),
    ('00194', '张元军'),
    ('00195', '黄国刚'),
    ('00196', '王世兵'),
    ('00197', '刘秦辉'),
    ('00198', '孔敏'),
    ('00199', '许云浩'),
    ('00200', '陈加安'),
    ('00201', '华勇'),
    ('00202', '鲁金元'),
    ('00203', '陈宝忠'),
    ('00204', '祝春喜'),
    ('00205', '刘焱'),
    ('00206', '艾则麦提·麦麦提'),
    ('00207', '张军'),
    ('00208', '雷康'),
    ('00209', '王昆'),
    ('00210', '雷军'),
    ('00211', '葛道文'),
    ('00212', '夏长鹏'),
    ('00213', '李启辉'),
    ('00214', '伊斯拉木·艾尔肯'),
    ('00215', '郭凡江'),
    ('00216', '孙智杰'),
    ('00217', '钟开创'),
    ('00218', '刘代宇'),
    ('00219', '伍生根'),
    ('00220', '田树华'),
    ('00221', '周自珍'),
    ('00222', '张双叶'),
    ('00223', '俞能枝'),
    ('00224', '鄢会兰'),
    ('00225', '谢续惠'),
    ('00226', '张姗'),
    ('00227', '夏冬敏'),
    ('00228', '张政'),
    ('00229', '周寿礼'),
    ('00230', '崔庆松'),
    ('00231', '崔祠海'),
    ('00232', '张立鹏'),
    ('00233', '后世富'),
    ('00234', '魏家骏'),
    ('00235', '鲁勇'),
    ('00236', '夏红建'),
    ('00237', '骆礼伦'),
    ('00238', '郭志祥'),
    ('00239', '王会筛'),
    ('00240', '查日华'),
    ('00241', '丁圣杰'),
    ('00242', '柳志文'),
    ('00243', '秦江阳'),
    ('00244', '尹晨'),
    ('00245', '卢坤丽'),
    ('00246', '曹东升'),
    ('00247', '唐晶晶'),
    ('00248', '杨红'),
    ('00249', '潘龙'),
    ('00250', '孙霞'),
    ('00251', '汪嘉东'),
    ('00252', '刘家敏'),
    ('00253', '马宁'),
    ('00254', '钟红彬'),
    ('00255', '张小峰'),
    ('00256', '伍生根'),
    ('00257', '田树华'),
    ('00258', '周自珍'),
    ('00259', '张双叶'),
    ('00260', '俞能枝'),
    ('00261', '鄢会兰'),
    ('00262', '谢续惠'),
    ('00263', '孔岩'),
    ('00264', '王强'),
    ('00265', '谈臻'),
    ('00266', '孙英杰'),
    ('00267', '杨雄'),
    ('00268', '崔庆松'),
    ('00269', '崔祠海'),
    ('00270', '张立鹏'),
    ('00271', '后世富'),
    ('00272', '魏家骏'),
    ('00273', '鲁勇'),
    ('00274', '夏红建'),
    ('00275', '骆礼伦'),
    ('00276', '郭志祥'),
    ('00277', '王会筛'),
    ('00278', '查日华'),
    ('00279', '丁圣杰'),
    ('00280', '柳志文'),
    ('00281', '秦江阳'),
    ('00282', '尹晨'),
    ('00283', '卢坤丽'),
    ('00284', '曹东升'),
    ('00285', '唐晶晶'),
    ('00286', '杨红'),
    ('00287', '潘龙'),
    ('00288', '孙霞'),
    ('00289', '汪嘉东'),
    ('00290', '刘家敏'),
    ('00291', '马宁'),
    ('00292', '钟红彬'),
    ('00293', '张小峰'),
    ('00294', '唐伟清'),
    ('00295', '秦云山'),
    ('00296', '钟淑敏'),
    ('00297', '钟楚云'),
    ('00298', '吴瑞煊'),
    ('00299', '吴瑞平'),
    ('00300', '冯嘉贤'),
    ('00301', '王惟权'),
    ('00302', '亓文岗'),
    ('00303', '李国河'),
    ('00304', '梁国柱'),
    ('00305', '肖秋兰'),
    ('00306', '张明明'),
    ('00307', '杨家盛'),
    ('00308', '黄木强'),
    ('00309', '陈永治'),
    ('00310', '梁燕杭'),
    ('00311', '叶启贵'),
    ('00312', '王龙'),
    ('00313', '张华明'),
    ('00314', '肖公明'),
    ('00315', '白祝成'),
    ('00316', '黄兴林'),
    ('00317', '周来刚'),
    ('00318', '宋新国'),
    ('00319', '欧继养'),
    ('00320', '周敏华'),
    ('00321', '梁笑萍'),
    ('00322', '刘国法'),
    ('00323', '陈顺铭'),
    ('00324', '叶胜蓝'),
    ('00325', '覃嘉俊'),
    ('00326', '曾思敏'),
    ('00327', '李甲军'),
    ('00328', '谭令'),
    ('00329', '林海潮'),
    ('00330', '覃元春'),
    ('00331', '赖日汉'),
    ('00332', '王怀国'),
    ('00333', '高奇'),
    ('00334', '陈宇'),
    ('00335', '孔德炜'),
    ('00336', '邹远驰'),
    ('00337', '曾汉荣'),
    ('00338', '汪成'),
    ('00339', '蒋宁华'),
    ('00340', '黄勇锋'),
    ('00341', '唐德'),
    ('00342', '黄伟生'),
    ('00343', '陈新春'),
    ('00344', '黄胜军'),
    ('00345', '李进国'),
    ('00346', '胡长平'),
    ('00347', '张健铭'),
    ('00348', '张国盛'),
    ('00349', '周华兵'),
    ('00350', '欧永康'),
    ('00351', '柒品乾'),
    ('00352', '肖志如'),
    ('00353', '王家泰'),
    ('00354', '黎昌明'),
    ('00355', '毛海容'),
    ('00356', '王添娣'),
    ('00357', '冯树焯'),
    ('00358', '植培根'),
    ('00359', '陆禹有'),
    ('00360', '黄桂杨'),
    ('00361', '霍锐添'),
    ('00362', '陈胜祥'),
    ('00363', '刘海林'),
    ('00364', '梁庆杰'),
    ('00365', '谢必芳'),
    ('00366', '刘志存'),
    ('00367', '莫法森'),
    ('00368', '古朋'),
    ('00369', '曾广法'),
    ('00370', '张旭球'),
    ('00371', '玉英杰'),
    ('00372', '孙立建'),
    ('00373', '相江华'),
    ('00374', '李建修'),
    ('00375', '何利荣'),
    ('00376', '陈鹏'),
    ('00377', '赵守仁'),
    ('00378', '唐宗伟'),
    ('00379', '梁金源'),
    ('00380', '朱团斌'),
    ('00381', '谢长新'),
    ('00382', '袁景裕'),
    ('00383', '孟庆鲍'),
    ('00384', '苏湛华'),
    ('00385', '郭浩锦'),
    ('00386', '成燕群'),
    ('00387', '农干唐'),
    ('00388', '王光荣'),
    ('00389', '梁庆锋'),
    ('00390', '熊联均'),
    ('00391', '农干校'),
    ('00392', '戴恩利'),
    ('00393', '王洪平'),
    ('00394', '王磊'),
    ('00395', '杨杰'),
    ('00396', '文兴欣'),
    ('00397', '何宣银'),
    ('00398', '杨琼会'),
    ('00399', '罗阳利'),
    ('00400', '李永江'),
    ('00401', '杨秀政'),
    ('00402', '詹得银'),
    ('00403', '韦学化'),
    ('00404', '冯胜霞'),
    ('00405', '尤红兵'),
    ('00406', '谢昌华'),
    ('00407', '赖胜成'),
    ('00408', '李宏军'),
    ('00409', '李镜全'),
    ('00410', '陈石长'),
    ('00411', '李正荣'),
    ('00412', '熊恩庆'),
    ('00413', '文保良'),
    ('00414', '李明臣'),
    ('00415', '吴真勇'),
    ('00416', '张志才'),
    ('00417', '刘继清'),
    ('00418', '吴锦辉'),
    ('00419', '梁泽流'),
    ('00420', '李斌'),
    ('00421', '罗肖'),
    ('00422', '向延群'),
    ('00423', '龙正良'),
    ('00424', '廖敏'),
    ('00425', '张小平'),
    ('00426', '詹启焕'),
    ('00427', '兰绍林'),
    ('00428', '宋志海'),
    ('00429', '刘禄勇'),
    ('00430', '李标'),
    ('00431', '黎国标'),
    ('00432', '赵忠亮'),
    ('00433', '苏海垣'),
    ('00434', '唐美军'),
    ('00435', '杨伟思'),
    ('00436', '邝俊才'),
    ('00437', '蓝同能'),
    ('00438', '刘当波'),
    ('00439', '丁冬琴'),
    ('00440', '余润'),
    ('00441', '陈细华'),
    ('00442', '李昌萍'),
    ('00443', '曹倩'),
    ('00444', '杨郁佳'),
    ('00445', '张平'),
    ('00446', '叶毛芽'),
    ('00447', '严万林'),
    ('00448', '罗天德'),
    ('00449', '刘晓辉'),
    ('00450', '曹俊强'),
    ('00451', '刘述坤'),
    ('00452', '廖云文'),
    ('00453', '王龙光'),
    ('00454', '邓兴华'),
    ('00455', '苏继华'),
    ('00456', '余海霞'),
    ('00457', '冯新波'),
    ('00458', '王美容'),
    ('00459', '薛家富'),
    ('00460', '王贵林'),
    ('00461', '何艳'),
    ('00462', '杨玉梅'),
    ('00463', '谢文娟'),
    ('00464', '赵守义'),
    ('00465', '丁俊'),
    ('00466', '邓兴红'),
    ('00467', '杨念'),
    ('00468', '彭沈'),
    ('00469', '冯锐洪'),
    ('00470', '卢健生'),
    ('00471', '梁冠华'),
    ('00472', '何浩峰'),
    ('00473', '刘祥春'),
    ('00474', '徐兴祥'),
    ('00475', '牟小芬'),
    ('00476', '何伟忠'),
    ('00477', '伍人平'),
    ('00478', '文求阳'),
    ('00479', '黄园成'),
    ('00480', '黄小引'),
    ('00481', '王恩义'),
    ('00482', '莫文全'),
    ('00483', '谯胜分'),
    ('00484', '李德杰'),
    ('00485', '覃亚道'),
    ('00486', '李德熙'),
    ('00487', '王艳丽'),
    ('00488', '李永福'),
    ('00489', '肖双双'),
    ('00490', '罗新富'),
    ('00491', '谭万祥'),
    ('00492', '曾新有'),
    ('00493', '姜付荣'),
    ('00494', '安浩'),
    ('00495', '禄明义'),
    ('00496', '吴满堂'),
    ('00497', '郑蓝波'),
    ('00498', '邓冬元');