-- ----------------------------
-- 1、组织表（组织编码规则：第一位固定为8，代表企业类型编码，后三位为从001开始递增的流水号）
-- ----------------------------
DROP TABLE IF EXISTS mdm_organization;

CREATE TABLE mdm_organization
(
    id                BIGINT AUTO_INCREMENT PRIMARY KEY COMMENT '组织ID',
    organization_code VARCHAR(4)   NOT NULL UNIQUE COMMENT '组织编码',
    organization_name VARCHAR(255) NOT NULL COMMENT '组织名称',
    create_by         VARCHAR(64)  DEFAULT 'admin' COMMENT '创建者',
    create_time       DATETIME     DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_by         VARCHAR(64)  DEFAULT NULL COMMENT '更新者',
    update_time       DATETIME     DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    remark            VARCHAR(500) DEFAULT NULL COMMENT '备注',
    CONSTRAINT chk_org_code_format CHECK (organization_code REGEXP '^8[0-9]{3}$')
) COMMENT ='组织表';

-- ----------------------------
-- 组织表初始化数据
-- ----------------------------
INSERT INTO mdm_organization (organization_code, organization_name)
VALUES ('8001', '广东精艺金属股份有限公司'),
       ('8002', '广东精艺销售有限公司'),
       ('8003', '广东精易晟新材料科技有限公司'),
       ('8004', '广东精艺万希能源科技有限公司'),
       ('8005', '精艺（上海）科技有限公司'),
       ('8006', '上海精艺万希售电有限公司'),
       ('8007', '上海精艺万希新能源科技有限公司'),
       ('8008', '芜湖精艺铜业有限公司'),
       ('8009', '芜湖万希金属制品有限公司'),
       ('8010', '芜湖精艺新材料科技有限公司'),
       ('8011', '佛山市顺德区精艺万希铜业有限公司'),
       ('8012', '广东精晟信息科技有限公司'),
       ('8013', '佛山市北远企业服务有限公司'),
       ('8014', '广东国卫保安服务有限公司'),
       ('8015', '飞鸿国际发展有限公司'),
       ('8016', '鹄山市能鸿科技（佛山市顺德区）有限公司');