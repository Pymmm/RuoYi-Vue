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
