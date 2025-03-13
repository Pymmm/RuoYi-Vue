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
