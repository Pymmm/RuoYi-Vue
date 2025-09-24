SET NAMES 'utf8';
-- ----------------------------
-- 生产订单表
-- ----------------------------
DROP TABLE IF EXISTS mdm_production_order;

CREATE TABLE mdm_production_order
(
    id                  BIGINT AUTO_INCREMENT PRIMARY KEY COMMENT '序号',

    order_date          DATETIME       NOT NULL COMMENT '下单时间',
    product_category    VARCHAR(20)    NOT NULL COMMENT '产品类别',
    customer_name       VARCHAR(255)   NOT NULL COMMENT '客户名称',
    specification_model VARCHAR(100)   NOT NULL COMMENT '规格型号',
    weight_kg           DECIMAL(12, 2) NOT NULL COMMENT '重量(KG)',
    delivery_date       DATETIME       NOT NULL COMMENT '交期',
    is_priority         CHAR(1)        NOT NULL DEFAULT 'N' COMMENT '是否优先生产：Y=是，N=否',
    is_produced         CHAR(1)        NOT NULL DEFAULT 'N' COMMENT '是否已生产：Y=是，N=否',
    production_date     DATETIME                DEFAULT NULL COMMENT '生产日期',
    remark              VARCHAR(500)            DEFAULT NULL COMMENT '备注',

    create_by           VARCHAR(64)             DEFAULT 'admin' COMMENT '创建者',
    create_time         DATETIME                DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_by           VARCHAR(64)             DEFAULT NULL COMMENT '更新者',
    update_time         DATETIME                DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'
) COMMENT ='生产订单表';

-- ----------------------------
-- 生产订单表初始化数据
-- ----------------------------
INSERT INTO mdm_production_order (order_date, product_category, customer_name, specification_model,
                       weight_kg, delivery_date, is_priority, is_produced, production_date, remark)
VALUES ('2025-09-10', '光管', '芜湖美的', '12.7*0.75', 3500, '2025-09-13', 'N', 'N', '2025-09-15', '注意盘重');
