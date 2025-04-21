SET NAMES 'utf8';
-- ----------------------------
-- 1、供应商表
-- ----------------------------
DROP TABLE IF EXISTS mdm_supplier;

CREATE TABLE mdm_supplier
(
    id            BIGINT AUTO_INCREMENT PRIMARY KEY COMMENT '供应商ID',
    supplier_code VARCHAR(7)   NOT NULL UNIQUE COMMENT '供应商编码',
    supplier_name VARCHAR(255) NOT NULL COMMENT '供应商名称',
    create_by     VARCHAR(64)  DEFAULT 'admin' COMMENT '创建者',
    create_time   DATETIME     DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_by     VARCHAR(64)  DEFAULT NULL COMMENT '更新者',
    update_time   DATETIME     DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    remark        VARCHAR(500) DEFAULT NULL COMMENT '备注',
    CONSTRAINT chk_supplier_code_format CHECK (supplier_code REGEXP '^[A-Z]{2}[A-Z][0-9]{4}$')
) COMMENT ='供应商表';

-- ----------------------------
-- 供应商表初始化数据
-- ----------------------------
INSERT INTO mdm_supplier (supplier_code, supplier_name)
VALUES ('GDZ0001', '深圳市华盛实业股份有限公司'),
       ('GDZ0002', '佛山市南海民意兴商贸有限公司'),
       ('AHZ0001', '铜陵有色金属集团上海国际贸易有限公司'),
       ('GDZ0003', '中南经贸（广州）有限公司'),
       ('SHZ0001', '上海锡海工贸有限责任公司'),
       ('GSZ0001', '广西北港资源发展有限公司'),
       ('SHZ0002', '上海致信嘉合实业发展有限公司'),
       ('GDZ0004', '广州兴海金属贸易有限公司'),
       ('GDZ0005', '佛山市南海兴茂金属有限公司'),
       ('GDZ0006', '佛山市铜都金属科技有限公司'),
       ('GDZ0007', '佛山市华聚投资控股有限公司'),
       ('GDZ0008', '佛山市兴海铜铝业有限公司'),
       ('GDZ0009', '佛山市万福金属贸易有限公司'),
       ('GDZ0010', '肇庆市汇才华贸易有限公司'),
       ('GDZ0011', '广州汇捷供应链管理有限公司'),
       ('GDZ0012', '佛山市南海海茂贸易有限公司'),
       ('GDZ0013', '佛山市南海华球金属回收有限公司'),
       ('AHZ0002', '安徽北林机器人自动化设备'),
       ('GDZ0014', '广东宇成投资集团有限公司'),
       ('CQZ0001', '重庆正坤废旧金属回收有限公司'),
       ('HNZ0001', '新乡市宏润废旧物资回收有限公司'),
       ('GDZ0015', '佛山市南海区恒富隆再生资源回收有限公司'),
       ('HNZ0002', '河南梦瑶科技有限公司');
