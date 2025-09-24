-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('生产订单管理', '2000', '1', 'productionOrder', 'mdm/productionOrder/index', 1, 0, 'C', '0', '0', 'mdm:productionOrder:list', '#', 'admin', sysdate(), '', null, '生产订单管理菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('生产订单管理查询', @parentId, '1',  '#', '', 1, 0, 'F', '0', '0', 'mdm:productionOrder:query',        '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('生产订单管理新增', @parentId, '2',  '#', '', 1, 0, 'F', '0', '0', 'mdm:productionOrder:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('生产订单管理修改', @parentId, '3',  '#', '', 1, 0, 'F', '0', '0', 'mdm:productionOrder:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('生产订单管理删除', @parentId, '4',  '#', '', 1, 0, 'F', '0', '0', 'mdm:productionOrder:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('生产订单管理导出', @parentId, '5',  '#', '', 1, 0, 'F', '0', '0', 'mdm:productionOrder:export',       '#', 'admin', sysdate(), '', null, '');