SET NAMES 'utf8';
-- ----------------------------
-- 2、部门表
-- ----------------------------
DROP TABLE IF EXISTS mdm_department;

CREATE TABLE mdm_department
(
    id                BIGINT AUTO_INCREMENT PRIMARY KEY COMMENT '部门ID',
    department_code   VARCHAR(8) UNIQUE NOT NULL COMMENT '部门编码',
    organization_code VARCHAR(4)        NOT NULL COMMENT '组织编码',
    organization_name VARCHAR(255)      NOT NULL COMMENT '组织名称',
    unit_code         VARCHAR(2)   DEFAULT NULL COMMENT '一级编码',
    unit_name         VARCHAR(255) DEFAULT NULL COMMENT '一级单位',
    sub_unit_code     VARCHAR(2)   DEFAULT NULL COMMENT '二级编码',
    sub_unit_name     VARCHAR(255) DEFAULT NULL COMMENT '二级单位',
    create_by         VARCHAR(64)  DEFAULT 'admin' COMMENT '创建者',
    create_time       DATETIME     DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_by         VARCHAR(64)  DEFAULT NULL COMMENT '更新者',
    update_time       DATETIME     DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    remark            VARCHAR(500) DEFAULT NULL COMMENT '备注'
) COMMENT ='部门表';

-- ----------------------------
-- 触发器
-- ----------------------------
DELIMITER //

-- 插入时触发器
CREATE TRIGGER before_insert_department
    BEFORE INSERT
    ON mdm_department
    FOR EACH ROW
BEGIN
    -- 处理空字符串为 NULL
    IF NEW.unit_code = '' THEN
        SET NEW.unit_code = NULL;
    END IF;

    IF NEW.unit_name = '' THEN
        SET NEW.unit_name = NULL;
    END IF;

    IF NEW.sub_unit_code = '' THEN
        SET NEW.sub_unit_code = NULL;
    END IF;

    IF NEW.sub_unit_name = '' THEN
        SET NEW.sub_unit_name = NULL;
    END IF;

    -- 确保 department_code 正确
    IF NEW.department_code <>
       CONCAT(NEW.organization_code, IFNULL(NEW.unit_code, ''), IFNULL(NEW.sub_unit_code, '')) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = '错误: department_code 必须等于 organization_code + unit_code + sub_unit_code';
    END IF;

    -- 确保 organization_code 格式正确（以 8 开头，后面 3 位数字）
    IF NEW.organization_code NOT REGEXP '^8[0-9]{3}$' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = '错误: organization_code 格式应为 8XXX';
    END IF;

    -- 确保 unit_code 是 2 位数字或 NULL
    IF NEW.unit_code IS NOT NULL AND NEW.unit_code NOT REGEXP '^[0-9]{2}$' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = '错误: unit_code 必须是 2 位数字或 NULL';
    END IF;

    -- 确保 sub_unit_code 是 2 位数字或 NULL
    IF NEW.sub_unit_code IS NOT NULL AND NEW.sub_unit_code NOT REGEXP '^[0-9]{2}$' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = '错误: sub_unit_code 必须是 2 位数字或 NULL';
    END IF;
END;
//

-- 更新时触发器
CREATE TRIGGER before_update_department
    BEFORE UPDATE
    ON mdm_department
    FOR EACH ROW
BEGIN
    -- 处理空字符串为 NULL
    IF NEW.unit_code = '' THEN
        SET NEW.unit_code = NULL;
    END IF;

    IF NEW.unit_name = '' THEN
        SET NEW.unit_name = NULL;
    END IF;

    IF NEW.sub_unit_code = '' THEN
        SET NEW.sub_unit_code = NULL;
    END IF;

    IF NEW.sub_unit_name = '' THEN
        SET NEW.sub_unit_name = NULL;
    END IF;

    -- 确保 department_code 正确（如果发生变更）
    IF NEW.department_code <>
       CONCAT(NEW.organization_code, IFNULL(NEW.unit_code, ''), IFNULL(NEW.sub_unit_code, '')) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = '错误: 更新时 department_code 仍必须等于 organization_code + unit_code + sub_unit_code';
    END IF;

    -- 确保 organization_code 格式正确
    IF NEW.organization_code NOT REGEXP '^8[0-9]{3}$' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = '错误: 更新时 organization_code 格式应为 8XXX';
    END IF;

    -- 确保 unit_code 是 2 位数字或 NULL
    IF NEW.unit_code IS NOT NULL AND NEW.unit_code NOT REGEXP '^[0-9]{2}$' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = '错误: 更新时 unit_code 必须是 2 位数字或 NULL';
    END IF;

    -- 确保 sub_unit_code 是 2 位数字或 NULL
    IF NEW.sub_unit_code IS NOT NULL AND NEW.sub_unit_code NOT REGEXP '^[0-9]{2}$' THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = '错误: 更新时 sub_unit_code 必须是 2 位数字或 NULL';
    END IF;
END;
//

DELIMITER ;

-- ----------------------------
-- 部门表初始化数据
-- ----------------------------
INSERT INTO mdm_department
(department_code, organization_code, organization_name, unit_code, unit_name, sub_unit_code, sub_unit_name)
VALUES ('8001', '8001', '广东精艺金属股份有限公司', NULL, NULL, NULL, NULL),
       ('800101', '8001', '广东精艺金属股份有限公司', '01', '股份本部', NULL, NULL),
       ('80010101', '8001', '广东精艺金属股份有限公司', '01', '股份本部', '01', '总经理室'),
       ('80010102', '8001', '广东精艺金属股份有限公司', '01', '股份本部', '02', '监事会'),
       ('80010103', '8001', '广东精艺金属股份有限公司', '01', '股份本部', '03', '董事办'),
       ('80010104', '8001', '广东精艺金属股份有限公司', '01', '股份本部', '04', '财务部'),
       ('80010105', '8001', '广东精艺金属股份有限公司', '01', '股份本部', '05', '审计法务部'),
       ('80010106', '8001', '广东精艺金属股份有限公司', '01', '股份本部', '06', '人力运营部'),
       ('80010107', '8001', '广东精艺金属股份有限公司', '01', '股份本部', '07', '科技行政部'),
       ('80010108', '8001', '广东精艺金属股份有限公司', '01', '股份本部', '08', '资产管理部'),
       ('80010109', '8001', '广东精艺金属股份有限公司', '01', '股份本部', '09', '挂靠'),
       ('800102', '8001', '广东精艺金属股份有限公司', '02', '顺德工厂', NULL, NULL),
       ('80010201', '8001', '广东精艺金属股份有限公司', '02', '顺德工厂', '01', '总经理室'),
       ('80010202', '8001', '广东精艺金属股份有限公司', '02', '顺德工厂', '02', '销售部'),

       ('8002', '8002', '广东精艺销售有限公司', NULL, NULL, NULL, NULL),
       ('800201', '8002', '广东精艺销售有限公司', '01', '股份本部', NULL, NULL),
       ('80020101', '8002', '广东精艺销售有限公司', '01', '股份本部', '01', '财务部'),
       ('800202', '8002', '广东精艺销售有限公司', '02', '马龙产业事业部', NULL, NULL),
       ('80020201', '8002', '广东精艺销售有限公司', '02', '马龙产业事业部', '01', '总经理室'),
       ('80020202', '8002', '广东精艺销售有限公司', '02', '马龙产业事业部', '02', '财务部'),
       ('80020203', '8002', '广东精艺销售有限公司', '02', '马龙产业事业部', '03', '采购部'),
       ('80020204', '8002', '广东精艺销售有限公司', '02', '马龙产业事业部', '04', '营销部'),
       ('800203', '8002', '广东精艺销售有限公司', '03', '顺德工厂', NULL, NULL),
       ('80020301', '8002', '广东精艺销售有限公司', '03', '顺德工厂', '01', '财务部'),
       ('80020302', '8002', '广东精艺销售有限公司', '03', '顺德工厂', '02', '销售部'),
       ('80020303', '8002', '广东精艺销售有限公司', '03', '顺德工厂', '03', '挂靠'),

       ('8003', '8003', '广东精易晟新材料科技有限公司', NULL, NULL, NULL, NULL),
       ('800301', '8003', '广东精易晟新材料科技有限公司', '01', '马龙产业事业部', NULL, NULL),
       ('80030101', '8003', '广东精易晟新材料科技有限公司', '01', '马龙产业事业部', '01', '生产部'),

       ('8004', '8004', '广东精艺万希能源科技有限公司', NULL, NULL, NULL, NULL),
       ('800401', '8004', '广东精艺万希能源科技有限公司', '01', '股份本部', NULL, NULL),
       ('80040101', '8004', '广东精艺万希能源科技有限公司', '01', '股份本部', '01', '科技行政部'),
       ('80040102', '8004', '广东精艺万希能源科技有限公司', '01', '股份本部', '02', '资产管理部'),
       ('800402', '8004', '广东精艺万希能源科技有限公司', '02', '万希能源', NULL, NULL),
       ('80040201', '8004', '广东精艺万希能源科技有限公司', '02', '万希能源', '01', '华南区新能源项目部'),

       ('8005', '8005', '精艺（上海）科技有限公司', NULL, NULL, NULL, NULL),
       ('800501', '8005', '精艺（上海）科技有限公司', '01', '股份本部', NULL, NULL),
       ('80050101', '8005', '精艺（上海）科技有限公司', '01', '股份本部', '01', '财务部'),

       ('8006', '8006', '上海精艺万希售电有限公司', NULL, NULL, NULL, NULL),
       ('800601', '8006', '上海精艺万希售电有限公司', '01', '上海售电', NULL, NULL),
       ('80060101', '8006', '上海精艺万希售电有限公司', '01', '上海售电', '01', '财务部'),
       ('80060102', '8006', '上海精艺万希售电有限公司', '01', '上海售电', '02', '研发部'),
       ('80060103', '8006', '上海精艺万希售电有限公司', '01', '上海售电', '03', '项目发展部'),

       ('8007', '8007', '上海精艺万希新能源科技有限公司', NULL, NULL, NULL, NULL),
       ('800701', '8007', '上海精艺万希新能源科技有限公司', '01', '上海精艺万希新能源', NULL, NULL),
       ('80070101', '8007', '上海精艺万希新能源科技有限公司', '01', '上海精艺万希新能源', '01', '总经理室'),
       ('80070102', '8007', '上海精艺万希新能源科技有限公司', '01', '上海精艺万希新能源', '02', '综合部'),
       ('80070103', '8007', '上海精艺万希新能源科技有限公司', '01', '上海精艺万希新能源', '03', '技术部'),

       ('8008', '8008', '芜湖精艺铜业有限公司', NULL, NULL, NULL, NULL),
       ('800801', '8008', '芜湖精艺铜业有限公司', '01', '股份本部', NULL, NULL),
       ('80080101', '8008', '芜湖精艺铜业有限公司', '01', '股份本部', '01', '资产管理部'),
       ('800802', '8008', '芜湖精艺铜业有限公司', '02', '芜湖工厂', NULL, NULL),
       ('80080201', '8008', '芜湖精艺铜业有限公司', '02', '芜湖工厂', '01', '资产管理部'),
       ('80080202', '8008', '芜湖精艺铜业有限公司', '02', '芜湖工厂', '02', '芜湖销售部'),
       ('80080203', '8008', '芜湖精艺铜业有限公司', '02', '芜湖工厂', '03', '采购组'),
       ('80080204', '8008', '芜湖精艺铜业有限公司', '02', '芜湖工厂', '04', '人力运营部'),
       ('80080205', '8008', '芜湖精艺铜业有限公司', '02', '芜湖工厂', '05', '财务管理部'),
       ('80080206', '8008', '芜湖精艺铜业有限公司', '02', '芜湖工厂', '06', '设备管理部'),
       ('80080207', '8008', '芜湖精艺铜业有限公司', '02', '芜湖工厂', '07', '生产管理部'),
       ('80080208', '8008', '芜湖精艺铜业有限公司', '02', '芜湖工厂', '08', '质量管理部'),

       ('8009', '8009', '芜湖万希金属制品有限公司', NULL, NULL, NULL, NULL),
       ('800901', '8009', '芜湖万希金属制品有限公司', '01', '芜湖工厂', NULL, NULL),
       ('80090101', '8009', '芜湖万希金属制品有限公司', '01', '芜湖工厂', '01', '生产管理部'),

       ('8010', '8010', '芜湖精艺新材料科技有限公司', NULL, NULL, NULL, NULL),
       ('801001', '8010', '芜湖精艺新材料科技有限公司', '01', '芜湖工厂', NULL, NULL),
       ('80100101', '8010', '芜湖精艺新材料科技有限公司', '01', '芜湖工厂', '01', '总经理室'),
       ('80100102', '8010', '芜湖精艺新材料科技有限公司', '01', '芜湖工厂', '02', '人力运营部'),
       ('80100103', '8010', '芜湖精艺新材料科技有限公司', '01', '芜湖工厂', '03', '财务管理部'),
       ('80100104', '8010', '芜湖精艺新材料科技有限公司', '01', '芜湖工厂', '04', '设备管理部'),
       ('80100105', '8010', '芜湖精艺新材料科技有限公司', '01', '芜湖工厂', '05', '质量管理部'),

       ('8011', '8011', '佛山市顺德区精艺万希铜业有限公司', NULL, NULL, NULL, NULL),
       ('801101', '8011', '佛山市顺德区精艺万希铜业有限公司', '01', '股份本部', NULL, NULL),
       ('80110101', '8011', '佛山市顺德区精艺万希铜业有限公司', '01', '股份本部', '01', '财务部'),
       ('80110102', '8011', '佛山市顺德区精艺万希铜业有限公司', '01', '股份本部', '02', '资产管理部'),
       ('801102', '8011', '佛山市顺德区精艺万希铜业有限公司', '02', '马龙产业事业部', NULL, NULL),
       ('80110201', '8011', '佛山市顺德区精艺万希铜业有限公司', '02', '马龙产业事业部', '01', '采购部'),
       ('80110202', '8011', '佛山市顺德区精艺万希铜业有限公司', '02', '马龙产业事业部', '02', '生产部'),
       ('801103', '8011', '佛山市顺德区精艺万希铜业有限公司', '03', '顺德工厂', NULL, NULL),
       ('80110301', '8011', '佛山市顺德区精艺万希铜业有限公司', '03', '顺德工厂', '01', '总经理室'),
       ('80110302', '8011', '佛山市顺德区精艺万希铜业有限公司', '03', '顺德工厂', '02', '财务部'),
       ('80110303', '8011', '佛山市顺德区精艺万希铜业有限公司', '03', '顺德工厂', '03', '综合办'),
       ('80110304', '8011', '佛山市顺德区精艺万希铜业有限公司', '03', '顺德工厂', '04', '销售部'),
       ('80110305', '8011', '佛山市顺德区精艺万希铜业有限公司', '03', '顺德工厂', '05', '生产部'),
       ('80110306', '8011', '佛山市顺德区精艺万希铜业有限公司', '03', '顺德工厂', '06', '挂靠'),

       ('8012', '8012', '广东精晟信息科技有限公司', NULL, NULL, NULL, NULL),
       ('801201', '8012', '广东精晟信息科技有限公司', '01', '股份本部', NULL, NULL),
       ('80120101', '8012', '广东精晟信息科技有限公司', '01', '股份本部', '01', '资产管理部'),

       ('8013', '8013', '佛山市北远企业服务有限公司', NULL, NULL, NULL, NULL),
       ('801301', '8013', '佛山市北远企业服务有限公司', '01', '北远', NULL, NULL),
       ('80130101', '8013', '佛山市北远企业服务有限公司', '01', '北远', '01', '生产部'),

       ('8014', '8014', '广东国卫保安服务有限公司', NULL, NULL, NULL, NULL),
       ('801401', '8014', '广东国卫保安服务有限公司', '01', '国卫', NULL, NULL),
       ('80140101', '8014', '广东国卫保安服务有限公司', '01', '国卫', '01', '综合办'),

       ('8015', '8015', '飞鸿国际发展有限公司', NULL, NULL, NULL, NULL),
       ('801501', '8015', '飞鸿国际发展有限公司', '01', '股份本部', NULL, NULL),
       ('80150101', '8015', '飞鸿国际发展有限公司', '01', '股份本部', '01', '飞鸿国际'),

       ('8016', '8016', '佛山市能鸿科技（佛山市顺德区）有限公司', NULL, NULL, NULL, NULL),
       ('801601', '8016', '佛山市能鸿科技（佛山市顺德区）有限公司', '01', '顺德工厂', NULL, NULL),
       ('80160101', '8016', '佛山市能鸿科技（佛山市顺德区）有限公司', '01', '顺德工厂', '01', '生产部');
