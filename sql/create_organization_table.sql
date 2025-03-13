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