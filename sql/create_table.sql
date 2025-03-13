-- ----------------------------
-- 1、组织表（组织编码规则：第一位固定为8，代表企业类型编码，后三位为从001开始递增的流水号）
-- ----------------------------
DROP TABLE IF EXISTS mdm_organization;

CREATE TABLE mdm_organization
(
    organization_code VARCHAR(4) PRIMARY KEY COMMENT '组织编码',
    organization_name VARCHAR(255) NOT NULL COMMENT '组织名称',
    create_by         VARCHAR(64)  DEFAULT NULL COMMENT '创建者',
    create_time       DATETIME     DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_by         VARCHAR(64)  DEFAULT NULL COMMENT '更新者',
    update_time       DATETIME     DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    remark            VARCHAR(500) DEFAULT NULL COMMENT '备注',
    CONSTRAINT chk_org_code_format CHECK (organization_code REGEXP '^8[0-9]{3}$')
) COMMENT ='组织表';

-- ----------------------------
-- 组织表初始化数据
-- ----------------------------
INSERT INTO mdm_organization
VALUES ('8001', '广东精艺金属股份有限公司', 'admin', NOW(), NULL, NULL, NULL);
INSERT INTO mdm_organization
VALUES ('8002', '精艺（上海）科技有限公司', 'admin', NOW(), NULL, NULL, NULL);
INSERT INTO mdm_organization
VALUES ('8003', '精艺万希新能源有限公司', 'admin', NOW(), NULL, NULL, NULL);

-- ----------------------------
-- 2、部门表（部门编码规则：共10位，前4位为组织编码，后续每级2位）
-- ----------------------------
DROP TABLE IF EXISTS mdm_department;

CREATE TABLE mdm_department
(
    department_code VARCHAR(10) PRIMARY KEY COMMENT '部门编码',
    department_name VARCHAR(30) NOT NULL COMMENT '部门名称',
    create_by       VARCHAR(64)  DEFAULT NULL COMMENT '创建者',
    create_time     DATETIME     DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_by       VARCHAR(64)  DEFAULT NULL COMMENT '更新者',
    update_time     DATETIME     DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    remark          VARCHAR(500) DEFAULT NULL COMMENT '备注'
) COMMENT ='部门表';

-- ----------------------------
-- 部门表初始化数据
-- ----------------------------
INSERT INTO mdm_department
VALUES ('8001', '广东精艺金属股份有限公司', 'admin', NOW(), NULL, NULL, NULL);
INSERT INTO mdm_department
VALUES ('800101', '顺德工厂', 'admin', NOW(), NULL, NULL, NULL);
INSERT INTO mdm_department
VALUES ('800102', '人力运营部', 'admin', NOW(), NULL, NULL, NULL);
INSERT INTO mdm_department
VALUES ('800103', '科技行政部', 'admin', NOW(), NULL, NULL, NULL);
INSERT INTO mdm_department
VALUES ('80010101', '生产部', 'admin', NOW(), NULL, NULL, NULL);
INSERT INTO mdm_department
VALUES ('8001010101', '品管办', 'admin', NOW(), NULL, NULL, NULL);

-- ----------------------------
-- 3、员工表（员工编码规则：6位，第一位固定为6，第二位起系统从 00001 逐一递增生成）
-- ----------------------------
DROP TABLE IF EXISTS mdm_employee;

CREATE TABLE mdm_employee
(
    employee_code VARCHAR(6) PRIMARY KEY COMMENT '员工编码',
    employee_name VARCHAR(50) NOT NULL COMMENT '员工姓名',
    create_by     VARCHAR(64)  DEFAULT NULL COMMENT '创建者',
    create_time   DATETIME     DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_by     VARCHAR(64)  DEFAULT NULL COMMENT '更新者',
    update_time   DATETIME     DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    remark        VARCHAR(500) DEFAULT NULL COMMENT '备注',
    CONSTRAINT chk_employee_code_format CHECK (employee_code REGEXP '^6[0-9]{5}$')
) COMMENT ='员工表';

-- ----------------------------
-- 员工表初始化数据
-- ----------------------------
INSERT INTO mdm_employee
VALUES ('600001', '黄裕辉', 'admin', NOW(), NULL, NULL, NULL);
INSERT INTO mdm_employee
VALUES ('600002', '卫国', 'admin', NOW(), NULL, NULL, NULL);
INSERT INTO mdm_employee
VALUES ('600003', '孔岩', 'admin', NOW(), NULL, NULL, NULL);
